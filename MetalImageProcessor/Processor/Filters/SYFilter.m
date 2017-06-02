//
//  SYFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYFilter.h"

@interface SYFilter ()
{
    SYTexture *inputTexture_;
    NSMutableArray *paramArray;
}
@end

@implementation SYFilter

- (instancetype)init
{
    self = [super init];
    if (self) {
        inputTexture_ = nil;
        
        outputTexture_ = nil;
        
        //初始化一个Program
        filterProgram_ = [[SYProgram alloc]initWithFunctionName:[[self class]functionName]];
        
        paramArray = [[NSMutableArray alloc]init];
        
    }
    return self;
}



-(void)setInputTexture:(SYTexture *)inputTexture{
    
    if (inputTexture_ != inputTexture) {
        inputTexture_ = nil ;
        inputTexture_ = inputTexture;
    }
    
}

-(void)render{
    //绘制
    if (!inputTexture_) {
        return;
    }
    
    
    
    if (!outputTexture_ || !CGSizeEqualToSize(outputTexture_.size, inputTexture_.size)) {
        
        //生成输出纹理
        outputTexture_ = [[SYTexture alloc]initWithTexturePixelFormat:MTLPixelFormatBGRA8Unorm TextureWidth:[inputTexture_.texture width] TextureHeight:[inputTexture_.texture height]];
        
    }
    
    
    //Compute 处理线程
    MTLSize threadgroupCounts = MTLSizeMake(8, 8, 1);
    MTLSize threadgroups = MTLSizeMake([inputTexture_.texture width] / threadgroupCounts.width,
                                       [inputTexture_.texture height] / threadgroupCounts.height,
                                       1);
    id<MTLCommandBuffer> commandBuffer = [[SYMetalContext defaultContext].commandQueue commandBuffer];

    id<MTLComputeCommandEncoder> commandEncoder = [commandBuffer computeCommandEncoder];
    [commandEncoder setComputePipelineState:filterProgram_.pipeline];
    //设置纹理
    [commandEncoder setTexture:outputTexture_.texture atIndex:0];
    [commandEncoder setTexture:inputTexture_.texture atIndex:1];
    
    NSArray *paramArrayFromCurrentFilter = [self filterParam];
    
    if (paramArrayFromCurrentFilter.count) {
        
        //给着色器传入数据
        for (int i = 0 ;  i < paramArrayFromCurrentFilter.count; ++i) {
            float param = [(paramArrayFromCurrentFilter[i]) floatValue];
            id<MTLBuffer> uniformBuffer = [[SYMetalContext defaultContext].device newBufferWithBytes:&param length:sizeof(param) options:MTLResourceOptionCPUCacheModeDefault];
            [commandEncoder setBuffer:uniformBuffer offset:0 atIndex:i];
        }
    }
    
    [commandEncoder dispatchThreadgroups:threadgroups threadsPerThreadgroup:threadgroupCounts];
    [commandEncoder endEncoding];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    
    //下一级消费者处理纹理
    [self produceAtTime];
}

//子类重写
-(NSArray*)filterParam{
    
    return paramArray;
    
}


+(NSString *)functionName{
    static NSString *fName = @"defaultFunction";
    return fName;
}
@end

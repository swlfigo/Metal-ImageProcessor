//
//  SYProgram.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYMetalContext.h"


//用Compute方法绘图
@interface SYProgram : NSObject

//使用ComputePipleLine -> 不使用 RenderPipeLine
@property (nonatomic, strong) id<MTLComputePipelineState> pipeline;

//Function
@property (nonatomic, strong) id<MTLFunction> kernelFunction;

//读取Metal shader 名字
-(instancetype)initWithFunctionName:(NSString *)functionName;


@end

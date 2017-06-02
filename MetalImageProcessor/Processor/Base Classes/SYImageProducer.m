//
//  SYImageProducer.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYImageProducer.h"

@implementation SYImageProducer

- (instancetype)init
{
    self = [super init];
    if (self) {
        _sourceImage = nil ;
    }
    return self;
}


-(id)initWithUIImage:(UIImage *)image{
    self = [self init];
    if (self) {
        
        self.sourceImage = image;

    }
    return self;
}


-(void)setSourceImage:(UIImage *)sourceImage{
    
    if (_sourceImage != sourceImage) {
        
        _sourceImage = nil ;
        
        _sourceImage = sourceImage;
        
        //初始化纹理
        [self initOutputTexture];
    }
}

- (void)initOutputTexture
{
    if (_sourceImage) {
        
        
        if (outputTexture_) {
            
            outputTexture_ = nil;
        }
        
        outputTexture_ = [[SYTexture alloc]initWithInputImage:_sourceImage];
        
        
    }
    else {
        
        if (outputTexture_) {
            outputTexture_ = nil;
        }
        
    }
}
@end

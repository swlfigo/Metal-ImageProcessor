//
//  SYMetalContext.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYMetalContext.h"

@implementation SYMetalContext


+ (instancetype)defaultContext {
    static dispatch_once_t onceToken;
    static SYMetalContext *instance = nil;
    dispatch_once(&onceToken, ^{
        id<MTLDevice> device = MTLCreateSystemDefaultDevice();
        instance = [[SYMetalContext alloc] initWithDevice:device];
    });
    
    return instance;
}

- (instancetype)initWithDevice:(id<MTLDevice>)device {
    if ((self = [super init])) {
        
        _device = device;
        _library = [_device newDefaultLibrary];
        _commandQueue = [_device newCommandQueue];
        _imageProcessingQueue = dispatch_queue_create("Sylar.MetalImageProcessor.imageProcessingQueue", NULL);
    }
    
    return self;
}


@end

//
//  SYMetalContext.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Metal/Metal.h>
@interface SYMetalContext : NSObject


//单例化Context
+ (instancetype)defaultContext;

@property (readonly, nonatomic) dispatch_queue_t imageProcessingQueue;

//Device
//在Metal中，设备是GPU的抽象。我们可以通过MTLCreateSystemDefaultDevice方法来获取当前设备
@property (nonatomic, strong) id<MTLDevice> device;



//Shader Library
/*
 warning: 库中至少需要一个默认的Shader,不然报错
 */
@property (nonatomic, strong) id<MTLLibrary> library;


/*
 
 The MTLCommandQueue protocol defines the interface for an object that can queue an ordered list of command buffers for a Metal device to execute. In general, command queues are thread-safe and allow multiple outstanding command buffers to be encoded simultaneously.
 
 MTLCommandQueue协议定义了对象的接口,可以队列有序列表的命令缓冲区执行渲染。
 */

@property (nonatomic, strong) id<MTLCommandQueue> commandQueue;

@end

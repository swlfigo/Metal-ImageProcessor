//
//  SYProducer.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYTexture.h"
#import "SYConsumer.h"
#import "SYProgram.h"


@protocol SYConsumer ;
@interface SYProducer : NSObject
{
    //输出纹理
    SYTexture *outputTexture_;
    //Program
    SYProgram *filterProgram_;
}


//添加消费者
- (void)addConsumer:(id <SYConsumer>)consumer;

//去除消费者
- (void)removeConsumer:(id <SYConsumer>)consumer;
- (void)removeAllConsumers;


//Producer处理纹理
- (void)produceAtTime;

- (UIImage*)imageFromCurrentFrame;

@end

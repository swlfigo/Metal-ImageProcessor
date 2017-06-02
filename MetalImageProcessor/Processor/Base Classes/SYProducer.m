//
//  SYProducer.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYProducer.h"

@interface SYProducer ()
{
    NSMutableArray *consumers_;
}
@end

@implementation SYProducer

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        consumers_ = [[NSMutableArray alloc]init];
        
        //初始化  output纹理
        outputTexture_ = nil;
        
        
    }
    return self;
}


-(NSArray *)consumers{
    return consumers_;
}


//添加消费者
-(void)addConsumer:(id<SYConsumer>)consumer{
    
    if (!consumer) {
        return;
    }
    
    [consumers_ addObject:consumer];
    
}

-(void)removeConsumer:(id<SYConsumer>)consumer{
    
    if (!consumer) {
        return;
    }
    
    if ([consumers_ containsObject:consumer]) {
        [consumers_ removeObject:consumer];
    }
}

- (void)removeAllConsumers
{
    
    [consumers_ removeAllObjects];
    
}



-(void)produceAtTime{
    
    if (outputTexture_ && [consumers_ count]) {
        for (id <SYConsumer> consumer in consumers_) {
            [consumer setInputTexture:outputTexture_];
            [consumer render];
        }
    }


    
}

-(UIImage *)imageFromCurrentFrame{
    return [outputTexture_ imageFromCurrentTexture];
}


@end

//
//  SYFilter.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYProducer.h"

@interface SYFilter : SYProducer<SYConsumer>


-(NSArray*)filterParam;

+ (NSString *)functionName;

@end

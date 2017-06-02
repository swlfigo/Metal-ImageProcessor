//
//  SYHazeFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYHazeFilter.h"

@implementation SYHazeFilter

- (instancetype)init
{
    self = [super init];
    if (self) {
        _distance = 0.2f;
        _slope = 0.0f;
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"Gamma";
    return vName;
}


-(void)setDistance:(float)distance{
    _distance = distance;
}

-(void)setSlope:(float)slope{
    _slope = slope;
}

-(NSArray *)filterParam{
    return @[@(_distance),@(_slope)];
}


@end

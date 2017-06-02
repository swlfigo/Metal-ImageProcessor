//
//  SYLuminanceFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYLuminanceFilter.h"

@implementation SYLuminanceFilter


- (instancetype)init
{
    self = [super init];
    if (self) {
        _luminance = 0.5f;
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"Luminance";
    return vName;
}


-(void)setLuminance:(float)luminance{
    NSAssert(luminance >= 0.0 && luminance <= 1.0, @"Progress could't accept invail number .");
    
    _luminance = luminance;
}

//返回当前Luminance
-(NSArray *)filterParam{
    return @[@(_luminance)];
}


@end

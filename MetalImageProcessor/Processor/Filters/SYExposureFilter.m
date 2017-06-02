//
//  SYExposureFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYExposureFilter.h"

@implementation SYExposureFilter


- (instancetype)init
{
    self = [super init];
    if (self) {
        _exposure = 0.0f;
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"Exposure";
    return vName;
}



-(void)setExposure:(float)exposure{
    NSAssert(exposure >= -10.0 && exposure <= 10.0, @"Progress could't accept invail number .");
    
    _exposure = exposure;
}

//返回当前Exposure
-(NSArray *)filterParam{
    return @[@(_exposure)];
}


@end

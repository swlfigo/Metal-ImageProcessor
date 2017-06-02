//
//  SYSaturationFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYSaturationFilter.h"

@implementation SYSaturationFilter

- (instancetype)init
{
    self = [super init];
    if (self) {
        _saturation = 1.0f;
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"Saturation";
    return vName;
}



-(void)setSaturation:(float)saturation{
    NSAssert(saturation >= 0.0 && saturation <= 2.0, @"Progress could't accept invail number .");
    
    _saturation = saturation;
}

-(NSArray *)filterParam{
    return @[@(_saturation)];
}


@end

//
//  SYBrightnessFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//




#import "SYBrightnessFilter.h"

@implementation SYBrightnessFilter

- (instancetype)init
{
    self = [super init];
    if (self) {
        _brightness = 0.0f;
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"Brightness";
    return vName;
}

-(void)setBrightness:(float)brightness{
    
    NSAssert(brightness >= -1.0 && brightness <= 1.0, @"Progress could't accept invail number .");
    
    _brightness = brightness;
    
}

//返回当前Brightness
-(NSArray *)filterParam{
    return @[@(_brightness)];
}


@end

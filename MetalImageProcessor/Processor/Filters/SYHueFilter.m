//
//  SYHueFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYHueFilter.h"

@implementation SYHueFilter

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _hue = 90;
        
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"Hue";
    return vName;
}



-(void)setHue:(float)hue{
    _hue = hue;
}


-(NSArray *)filterParam{
    return @[@(_hue)];
}

@end

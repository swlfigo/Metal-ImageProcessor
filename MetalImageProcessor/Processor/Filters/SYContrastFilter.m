//
//  SYContrastFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYContrastFilter.h"

@implementation SYContrastFilter


- (instancetype)init
{
    self = [super init];
    if (self) {
        _contrast = 1.0f;
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"Contrast";
    return vName;
}


-(void)setContrast:(float)contrast{
    NSAssert(contrast >= 0.0 && contrast <= 4.0, @"Progress could't accept invail number .");
    
    _contrast = contrast;
}


-(NSArray *)filterParam{
    return @[@(_contrast)];
}

@end

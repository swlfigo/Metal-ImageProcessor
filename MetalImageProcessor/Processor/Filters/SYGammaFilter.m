//
//  SYGammaFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYGammaFilter.h"

@implementation SYGammaFilter

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gamma = 1.0f;
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"Gamma";
    return vName;
}




-(void)setGamma:(float)gamma{
    NSAssert(gamma >= 0.0 && gamma <= 3.0, @"Progress could't accept invail number .");
    
    _gamma = gamma;
}

-(NSArray *)filterParam{
    return @[@(_gamma)];
}

@end

//
//  SYFalseColorFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYFalseColorFilter.h"

@implementation SYFalseColorFilter


- (instancetype)init
{
    self = [super init];
    if (self) {
        _R1 = 0.0f;
        _R2 = 1.0f;
        
        _G1 = 0.0f;
        _G2 = 0.0f;
        
        _B1 = 0.5f;
        _B2 = 0.0f;
        
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"FalseColor";
    return vName;
}

-(void)setR1:(float)R1{
    NSAssert(R1 >= 0.0 && R1 <= 1.0, @"Progress could't accept invail number .");
    _R1 = R1;
}

-(void)setR2:(float)R2{
    NSAssert(R2 >= 0.0 && R2 <= 1.0, @"Progress could't accept invail number .");
    _R2 = R2;
}

-(void)setG1:(float)G1{
    NSAssert(G1 >= 0.0 && G1 <= 1.0, @"Progress could't accept invail number .");
    _G1 = G1;
}

-(void)setG2:(float)G2{
    NSAssert(G2 >= 0.0 && G2 <= 1.0, @"Progress could't accept invail number .");
    _G2 = G2;
}

-(void)setB1:(float)B1{
    NSAssert(B1 >= 0.0 && B1 <= 1.0, @"Progress could't accept invail number .");
    _B1 = B1;
}

-(void)setB2:(float)B2{
    NSAssert(B2 >= 0.0 && B2 <= 1.0, @"Progress could't accept invail number .");
    _B2 = B2;
}

-(NSArray *)filterParam{
    return @[@(_R1),@(_G1),@(_B1),
             @(_R2),@(_G2),@(_B2)];
}


@end

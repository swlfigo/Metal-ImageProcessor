//
//  SYRGBFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYRGBFilter.h"

@implementation SYRGBFilter


- (instancetype)init
{
    self = [super init];
    if (self) {
        _R = 1.0f;
        _G = 1.0f;
        _B = 1.0f;
        
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"RGB";
    return vName;
}


-(void)setR:(float)R{
    NSAssert(R >= 0.0 && R <= 1.0, @"Progress could't accept invail number .");
    _R = R;
}

-(void)setG:(float)G{
    NSAssert(G >= 0.0 && G <= 1.0, @"Progress could't accept invail number .");
    _G = G;
}

-(void)setB:(float)B{
    NSAssert(B >= 0.0 && B <= 1.0, @"Progress could't accept invail number .");
    _B = B;
}

-(NSArray *)filterParam{
    return @[@(_R),@(_G),@(_B)];
}
@end

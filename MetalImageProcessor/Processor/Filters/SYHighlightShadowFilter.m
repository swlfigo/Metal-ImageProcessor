//
//  SYHighlightShadowFilter.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYHighlightShadowFilter.h"

@implementation SYHighlightShadowFilter


- (instancetype)init
{
    self = [super init];
    if (self) {
        _shadows = 0.0f;
        _highlights = 1.0f;
    }
    return self;
}

+(NSString *)functionName{
    static NSString *vName = @"HighlightShadow";
    return vName;
}


-(void)setShadows:(float)shadows{
    _shadows = shadows;
}

-(void)setHighlights:(float)highlights{
    _highlights = highlights;
}

-(NSArray *)filterParam{
    return @[@(_shadows),@(_highlights)];
}

@end

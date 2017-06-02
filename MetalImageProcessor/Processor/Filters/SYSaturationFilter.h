//
//  SYSaturationFilter.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYFilter.h"


/**
 饱和度Filter
 范围 0.0 ~ 2.0
 Default 1.0
 */
@interface SYSaturationFilter : SYFilter

@property(nonatomic,assign)float saturation;

@end

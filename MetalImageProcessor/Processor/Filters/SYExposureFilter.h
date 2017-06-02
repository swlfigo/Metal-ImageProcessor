//
//  SYExposureFilter.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYFilter.h"


/**
 曝光度Filter
 范围 -10.0 ~ 10.0
 Default 0.0
 */
@interface SYExposureFilter : SYFilter

@property(nonatomic,assign)float exposure;

@end

//
//  SYBrightnessFilter.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYFilter.h"



/**
 亮度Filter
 范围 -1.0 ~ 1.0   
 Default 0.0
 */
@interface SYBrightnessFilter : SYFilter

@property(nonatomic,assign)float brightness;


@end

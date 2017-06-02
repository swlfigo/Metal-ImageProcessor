//
//  SYContrastFilter.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYFilter.h"


/**
 对比度Filter
 范围 0.0 ~ 4.0
 Default 1.0
 */
@interface SYContrastFilter : SYFilter

@property(nonatomic,assign)float contrast;

@end

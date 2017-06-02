//
//  SYLuminanceFilter.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYFilter.h"


/**
 明亮Filter
 范围 0.0 ~ 1.0
 Default 0.5
 */
@interface SYLuminanceFilter : SYFilter

@property(nonatomic,assign)float luminance;

@end

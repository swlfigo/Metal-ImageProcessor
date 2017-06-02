//
//  SYHueFilter.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYFilter.h"



/**
 Hue Filter
 传入度数
 default:90
 */
@interface SYHueFilter : SYFilter

@property(nonatomic,assign)float hue;

@end

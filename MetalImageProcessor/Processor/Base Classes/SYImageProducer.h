//
//  SYImageProducer.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYProducer.h"
#import "SYTexture.h"

@interface SYImageProducer : SYProducer

//传入图片
- (id)initWithUIImage:(UIImage *)image;

//素材图片
@property (retain, nonatomic) UIImage *sourceImage;

@end

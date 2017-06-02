//
//  SYTexture.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMedia/CoreMedia.h>
#import <Metal/Metal.h>
#import <UIKit/UIKit.h>
#import "SYMetalContext.h"


@interface SYTexture : NSObject


- (instancetype)initWithInputImage:(UIImage *)image;

//Default: mipmapped = NO;
- (instancetype)initWithTexturePixelFormat:(MTLPixelFormat)pixelFormat TextureWidth:(NSUInteger)width TextureHeight:(NSUInteger)height;

//获取当前纹理的图片
- (UIImage *)imageFromCurrentTexture;

//纹理生成图片
+ (UIImage *)imageWithMTLTexture:(id<MTLTexture>)texture;


//纹理
@property (nonatomic, strong) id<MTLTexture> texture;

//Size
@property(readonly,nonatomic)CGSize size;

@end

//
//  SYConsumer.h
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SYTexture.h"
#import <CoreMedia/CoreMedia.h>

@protocol SYConsumer <NSObject>

//传入纹理
- (void)setInputTexture:(SYTexture *)inputTexture;

- (void)render;

@end

//
//  ViewController.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "ViewController.h"
#import "SYFilter.h"
#import "SYImageProducer.h"
#import "SYBrightnessFilter.h"
#import "SYHazeFilter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SYImageProducer *image = [[SYImageProducer alloc]initWithUIImage:[UIImage imageNamed:@"AnimalImage.png"]];
    
    
    
//    SYFilter *filter = [[SYFilter alloc]init];
//    SYBrightnessFilter *bright = [[SYBrightnessFilter alloc]init];
//    bright.brightness = 0.7f;
//    [image addConsumer:bright];
//    [bright addConsumer:filter];
//    [image produceAtTime];
//    UIImage *final = [filter imageFromCurrentFrame];
    
    
    SYHazeFilter *haze = [[SYHazeFilter alloc]init];
    [image addConsumer:haze];
    [image produceAtTime];
    
    UIImage *final = [haze imageFromCurrentFrame];
    
    NSLog(@"");
    
}





@end

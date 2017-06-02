//
//  SYProgram.m
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/5.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#import "SYProgram.h"

@interface SYProgram ()
{
    id <MTLLibrary> renderLibrary;
}
@end

@implementation SYProgram

-(instancetype)initWithFunctionName:(NSString *)functionName{
    if (self = [super init]) {
        
        NSError *error = nil;
        renderLibrary  = [[SYMetalContext defaultContext].device newDefaultLibrary];
        _kernelFunction = [renderLibrary newFunctionWithName:functionName];
        _pipeline = [[SYMetalContext defaultContext].device newComputePipelineStateWithFunction:_kernelFunction error:&error];
    }
    return self;
}

@end

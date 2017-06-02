//
//  LuminanceFilter.metal
//  MetalImageProcessor
//
//  Created by Sylar on 2017/5/8.
//  Copyright © 2017年 Sylar. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;

using namespace metal;
kernel void Luminance(
                      texture2d<float, access::write> outTexture [[texture(0)]],
                      texture2d<float, access::read> inTexture [[texture(1)]],
                      device float *factor [[buffer(0)]],
                      uint2 gid [[thread_position_in_grid]])
{
    const float3 W = float3(0.2125, 0.7154, 0.0721);
    const float4 inColor = inTexture.read(gid);
    const float luminance = dot(inColor.rgb,W);
    const float result = step(*factor,luminance);
    const float4 outColor = float4(float3(result),inColor.a);
    outTexture.write(outColor, gid);
}

[OS China Page(访问快)](http://necromancer.oschina.io)

[github Page](https://swlfigo.github.io)

[我的 Gay HUB](https://github.com/swlfigo)


# Metal - Part - 4 Metal 处理图片



此Demo利用Metal处理图片

UI与滤镜(算法参考网上)迟点补上

此 Demo 利用 Metal `MTLComputeCommandEncoder` 来处理图片

Metal 分 `MTLComputeCommandEncoder` 与 `MTLRenderCommandEncoder` 两种加密器

区别: 前者使用传入图片直接在着色器对原图片处理，速度快，后者需要在着色器传入顶点坐标与纹理坐标来计算


# ZDBorderView
继承自UIView, 拥有自由组合的边线. 方便UI布局.


## 需求

* 如果你创建分割线,边线还在用addSubview的方式,或者采用切图的方式
* 如果你的UE设计师喜欢各种1像素的线(高清屏的缘故程序体现0.5,IB没办法设置成0.5)

## Examples
![Image](https://raw.githubusercontent.com/hai00jiao/ZDBorderView/master/IMG_1.png)

## Usage

import
* ZDBorderView.h
* ZDBorderView.m

```objective-c
    [_borderView setBorderColor:[UIColor redColor]];
    [_borderView setBorderType:ZDBorderTypeLeft|ZDBorderTypeRight];
    [_borderView setBorderType:ZDBorderTypeBottom|ZDBorderTypeRight|ZDBorderTypeLeft];
```





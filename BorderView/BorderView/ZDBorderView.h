//
//  ZDBorderView.h
//  Zhidao
//
//  Created by zhuchao on 14/10/27.
//  Copyright (c) 2014年 Baidu. All rights reserved.
//

#import <UIKit/UIKit.h>


#define ColorFromHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

typedef NS_OPTIONS(NSUInteger, ZDBorderType) {
    ZDBorderTypeTop     = 1 << 0,
    ZDBorderTypeRight   = 1 << 1,
    ZDBorderTypeBottom  = 1 << 2,
    ZDBorderTypeLeft    = 1 << 3
};

@interface ZDBorderView : UIView

///边框类型
@property(nonatomic,assign) ZDBorderType borderType;

///边框颜色
@property(nonatomic,strong) UIColor *borderColor;

@end

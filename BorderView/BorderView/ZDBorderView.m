//
//  ZDBorderView.m
//  Zhidao
//
//  Created by zhuchao on 14/10/27.
//  Copyright (c) 2014年 Baidu. All rights reserved.
//

#import "ZDBorderView.h"

@implementation ZDBorderView

- (void)borderViewCommonInit
{
    [self setBorderColor:ColorFromHex(0xd5d5d5)];
    _borderColor = ColorFromHex(0xd5d5d5);
    _borderType = ZDBorderTypeTop | ZDBorderTypeRight | ZDBorderTypeBottom | ZDBorderTypeLeft;
    [self setBackgroundColor:[UIColor whiteColor]];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self borderViewCommonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self borderViewCommonInit];
    }
    return self;
}

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    [self setNeedsDisplay];
}

- (void)setBorderType:(ZDBorderType)borderType
{
    _borderType = borderType;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    if (self.borderType != 0) {
        CGContextRef cx=UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(cx, 1.0f);//这里设置的是1, 但实际反映出是0.5的效果, 要的就是这种感觉. ~原因我知道.
        CGContextSetAllowsAntialiasing(cx, NO);
        CGContextMoveToPoint(cx, 0.0f,0.0f);//左上边
        //顶部的线
        if ([self hasBorderWithType:ZDBorderTypeTop])
        {
            CGContextAddLineToPoint(cx, rect.size.width, 0.0f);
        }else {
            CGContextMoveToPoint(cx, rect.size.width, 0.0f);
        }
        
        //右侧的线
        if ([self hasBorderWithType:ZDBorderTypeRight])
        {
            CGContextAddLineToPoint(cx, rect.size.width, rect.size.height);
        }else {
            CGContextMoveToPoint(cx, rect.size.width, rect.size.height);
        }
        
        //底部的线
        if ([self hasBorderWithType:ZDBorderTypeBottom])
        {
            CGContextAddLineToPoint(cx, 0.0f, rect.size.height);
        }else {
            CGContextMoveToPoint(cx, 0.0f, rect.size.height);
        }
        
        //左侧的线
        if ([self hasBorderWithType:ZDBorderTypeLeft])
        {
            CGContextAddLineToPoint(cx, 0.0f,0.0f);
        }else {
            CGContextMoveToPoint(cx, 0.0f,0.0f);
        }
        
        [_borderColor setStroke];
        CGContextDrawPath(cx, kCGPathStroke);
    }
}

- (BOOL)hasBorderWithType:(ZDBorderType)aType
{
    return (_borderType & aType) != 0;
}

@end

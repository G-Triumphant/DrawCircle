//
//  Circle.m
//  DrawCircle
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "Circle.h"

#define LineWidth 2

@interface Circle()
@property (nonatomic, assign) CGFloat vWidth;
@end

@implementation Circle

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        _vWidth = frame.size.width;
        // 先画一个底部的圆
        [self configBgCircle];
        
    }
    return self;
}

#pragma mark 底下灰色的圆
- (void)configBgCircle {
    UIBezierPath *bPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5) radius:_vWidth * 0.5 startAngle:0 endAngle:360 clockwise:YES];
    CAShapeLayer *shaperLayer = [CAShapeLayer layer];
    shaperLayer.fillColor = [UIColor clearColor].CGColor;
    shaperLayer.strokeColor = [UIColor lightGrayColor].CGColor;
    shaperLayer.lineWidth = LineWidth;
    shaperLayer.path = bPath.CGPath;
    [self.layer addSublayer:shaperLayer];
}

@end

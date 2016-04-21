
//
//  KitView.m
//  DrawCircle
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//


#import "KitView.h"

@implementation MylayerDelegate {
    MylayerDelegate *_layerDelegate;
}

@end




@implementation KitView
//重写父类的方法
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor lightGrayColor];
        
    }
    return self;
}

//画一个蓝色的圆

//方1：
//
//- (void)drawRect:(CGRect)rect {
//    
//    //Core Graphics框架
//    /*
//    //获取上下文
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    //笔触宽度
//    CGContextSetLineWidth(ctx, 2);
//    //设置笔触颜色
//    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
//    //裁圆
//    CGContextAddEllipseInRect(ctx, CGRectMake(150, 250, 100, 100));
//    //设置填充颜色
//    CGContextSetFillColorWithColor(ctx, [UIColor blueColor].CGColor);
//    //填充路径
//    CGContextFillPath(ctx);
//     */
//    
//    //贝塞尔曲线通过一个矩形范围来，创建子路径，绘制圆（UIKit框架）
//    
////    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
////    [[UIColor blueColor] setFill];
////    //填充路径
////    [p fill];
//
//}

@end



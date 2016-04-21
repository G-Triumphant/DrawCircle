//
//  DrawLayer.m
//  DrawCircle
//
//  Created by apple on 16/3/18.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "DrawLayer.h"

@implementation DrawLayer

- (void)drawInContext:(CGContextRef)ctx {
    
    //关键一步获取上下文
    UIGraphicsPushContext(ctx);

    //UIKit框架中 贝塞尔
    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    [[UIColor blueColor] setFill];
    //填充路径
    [p fill];
    
    UIGraphicsPopContext();
    
    
    //Core Graphics框架
//    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 100, 100));
//    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
//    //填充路径
//    CGContextFillPath(ctx);
    
     NSLog(@"%###########%");
}

@end

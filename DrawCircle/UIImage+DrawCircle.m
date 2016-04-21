//
//  UIImage+DrawCircle.m
//  DrawCircle
//
//  Created by apple on 16/3/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UIImage+DrawCircle.h"

@implementation UIImage (DrawCircle)

+ (instancetype)circleImage:(UIImage *)image withParam:(CGFloat)inset {
    
    //开始绘图
    UIGraphicsBeginImageContext(image.size);
    //获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置笔触宽度
    CGContextSetLineWidth(context, 2);
    //设置笔触颜色
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    //设置绘图圆形图范围
    CGRect rect = CGRectMake(inset, inset, image.size.width - inset * 2.0f, image.size.height - inset * 2.0f);
    
    //以给出的裁剪方式进行裁剪
    CGContextAddEllipseInRect(context, rect);
    //裁剪
    CGContextClip(context);
    
    //绘制图片，显示范围(重要的一步)
    [image drawInRect:rect];
    
    //显示裁剪的路径线(给出圆形裁剪方式)
    CGContextAddEllipseInRect(context, rect);
    CGContextStrokePath(context);
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

//有限制性的方法，不能灵活设置图片尺寸
+ (instancetype)drawCircleImage:(UIImage *)image {
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), NO, 0);
    
    CGContextRef con = UIGraphicsGetCurrentContext();
    
    //笔触颜色
    CGContextSetStrokeColorWithColor(con, [UIColor redColor].CGColor);
    
    //填充颜色
    CGContextSetFillColorWithColor(con, [UIColor yellowColor].CGColor);
    
    CGContextAddEllipseInRect(con, CGRectMake(0,0,100,100));
    CGContextClip(con);
    
//    //裁剪后绘制显示的范围
    [image drawInRect:CGRectMake(0, 0, 100, 100)];
    
    CGContextFillPath(con);
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end

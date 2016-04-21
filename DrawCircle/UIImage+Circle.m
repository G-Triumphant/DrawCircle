//
//  UIImage+Circle.m
//  DrawCircle
//
//  Created by apple on 16/3/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UIImage+Circle.h"

@implementation UIImage (Circle)

+ (instancetype)imageWithIconName:(NSString *)icon borderImage:(NSString *)borderImage border:(int)border{
    //头像图片
    UIImage * image = [UIImage imageNamed:icon];
    //边框图片
    UIImage * borderImg = [UIImage imageNamed:borderImage];
    //
    CGSize size = CGSizeMake(image.size.width + border, image.size.height + border);
    
    //1.创建图片上下文(以头像 + 边框的最大范围来进行绘制)
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    //绘制边框的圆
    CGContextRef context = UIGraphicsGetCurrentContext();
    //绘圆
    CGContextAddEllipseInRect(context, CGRectMake(0, 0, size.width, size.height));
    //剪切可视范围
    CGContextClip(context);
    
    //绘制边框图片
    [borderImg drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    //设置头像frame
    CGFloat iconX = border / 2;
    CGFloat iconY = border / 2;
    CGFloat iconW = image.size.width;
    CGFloat iconH = image.size.height;
    
    //绘制圆形头像范围
    CGContextAddEllipseInRect(context, CGRectMake(iconX, iconY, iconW, iconH));
    //剪切可视范围
    CGContextClip(context);
    
    //绘制头像
    [image drawInRect:CGRectMake(iconX, iconY, iconW, iconH)];
    
    //取出整个图片上下文的图片
    UIImage *iconImage = UIGraphicsGetImageFromCurrentImageContext();
    
    return iconImage;
}
@end

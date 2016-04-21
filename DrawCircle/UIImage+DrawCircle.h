//
//  UIImage+DrawCircle.h
//  DrawCircle
//
//  Created by apple on 16/3/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

//采用分类，可以降低耦合性， 观察所属类的类型，找出其类的父类， 添加分类， 通过以重写父类的方法来自定义添加自己的类别，通过instancetype类型的类方法来调用。
@interface UIImage (DrawCircle)

+ (instancetype)circleImage:(UIImage *)image withParam:(CGFloat)inset;

+ (instancetype)drawCircleImage:(UIImage *)image;
@end

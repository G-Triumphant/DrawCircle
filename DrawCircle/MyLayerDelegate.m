
//
//  MyLayerDelegate.m
//  DrawCircle
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MyLayerDelegate.h"

@implementation MyLayerDelegate


- (void)drawLayer:(CALayer*)layer inContext:(CGContextRef)ctx {
    
//    UIGraphicsPushContext(ctx);
//    
//    UIBezierPath* p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0,0,100,100)];
//    
//    [[UIColor blueColor] setFill];
//    
//    [p fill];
//    
//    UIGraphicsPopContext();
    
    CGContextAddEllipseInRect(ctx, CGRectMake(0,0,100,100));
    
    CGContextSetFillColorWithColor(ctx, [UIColor blueColor].CGColor);
    
    CGContextFillPath(ctx);
    
}

@end

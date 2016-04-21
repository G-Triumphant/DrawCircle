//
//  Draw.m
//  DrawCircle
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "Draw.h"

@interface Draw()
@property (nonatomic, strong) UIImage *image;

@end

@implementation Draw

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    //获取ctx
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //设置画图相关样式参数
    
    //设置笔触颜色(默认黑色)
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);//设置颜色有很多方法，我觉得这个方法最好用
    
    //设置笔触宽度
    CGContextSetLineWidth(ctx, 2);
    
    //设置填充色
    CGContextSetFillColorWithColor(ctx, [UIColor whiteColor].CGColor);
    //设置拐点样式
    //    enum CGLineJoin {
    //        kCGLineJoinMiter, //尖的，斜接
    //        kCGLineJoinRound, //圆
    //        kCGLineJoinBevel //斜面
    //    };
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    //Line cap 线的两端的样式
    //    enum CGLineCap {
    //        kCGLineCapButt,
    //        kCGLineCapRound,
    //        kCGLineCapSquare
    //    };
    CGContextSetLineCap(ctx, kCGLineCapRound);
    //虚线线条样式
    //CGFloat lengths[] = {10,10};
    
    //画线
    [self drawLine:ctx];
    //画形状
    [self drawSharp:ctx];
    //画图片
    [self drawPicture:ctx];
    
}





//画线
-(void)drawLine:(CGContextRef)ctx{
    
    /*
    //画一条简单的线
    CGPoint points1[] = {CGPointMake(10, 30),CGPointMake(10, 30)};
    CGContextAddLines(ctx,points1, 2);
    */
     
    /*
   // 画线方法1，使用CGContextAddLineToPoint画线，需要先设置一个起始点
    //设置起始点
    CGContextMoveToPoint(ctx, 50, 50);
    //添加一个点
    CGContextAddLineToPoint(ctx, 100,50);
    //在添加一个点，变成折线
    CGContextAddLineToPoint(ctx, 150, 100);
    */
    
    /*
    //画线方法2
    //构造线路径的点数组
    CGPoint points2[] = {CGPointMake(60, 60),CGPointMake(80, 120),CGPointMake(20, 300)};
    CGContextAddLines(ctx,points2, 3);
    */
     
    //利用路径去画一组点（推荐使用路径的方式，虽然多了几行代码，但是逻辑更清晰了）
    //第一个路径
    CGMutablePathRef path1 = CGPathCreateMutable();
    CGPathMoveToPoint(path1, &CGAffineTransformIdentity, 0, 200);
    //CGAffineTransformIdentity 类似于初始化一些参数
    CGPathAddLineToPoint(path1, &CGAffineTransformIdentity, 100, 250);
    CGPathAddLineToPoint(path1, &CGAffineTransformIdentity, 310, 210);
    //路径1加入context
    CGContextAddPath(ctx, path1);
    //path同样有方法CGPathAddLines(),和CGContextAddLines()差不多用户，可以自己试下

    //描出笔触
    CGContextStrokePath(ctx);
}

//画矩形,画椭圆，多边形
-(void)drawSharp:(CGContextRef)ctx{
    
    //画椭圆，如果长宽相等就是圆
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 250, 50, 50));
    
    //画矩形,长宽相等就是正方形
    CGContextAddRect(ctx, CGRectMake(70, 270, 50, 50));
     
    /*
    //画多边形，多边形是通过path完成的
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, &CGAffineTransformIdentity, 120, 250);
    CGPathAddLineToPoint(path, &CGAffineTransformIdentity, 200, 250);
    CGPathAddLineToPoint(path, &CGAffineTransformIdentity, 180, 300);
    CGPathCloseSubpath(path);
    CGContextAddPath(ctx, path);
    */
    
    //填充
    CGContextFillPath(ctx);
    
}

//画图片
-(void)drawPicture:(CGContextRef)context{
    /*图片*/
    self.image = [UIImage imageNamed:@"1"];
    [self.image drawInRect:CGRectMake(150, 250, 100, 100)];
   
}

@end

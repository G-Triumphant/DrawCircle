//
//  ViewController.m
//  DrawCircle
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

#import "Circle.h"

#import "Draw.h"

#import "UIImage+Circle.h"

#import "UIImage+DrawCircle.h"

#import "KitView.h"

#import "MylayerDelegate.h"

#import "DrawLayer.h"//导入创建的layer层

@interface ViewController ()
@property (nonatomic, strong) Circle *circle;
@property (nonatomic, strong) Draw *draw;

@end

@implementation ViewController {
    
    MyLayerDelegate *_layerDeleagete;
    CALayer         *_layer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.circle = [[Circle alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - 100) * 0.5, 100, 100, 100)];
//   
//    [self.view addSubview:self.circle];
    
    
//    self.draw = [[Draw alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 400)];
//    
//    [self.view addSubview:self.draw];
    
    /*
     **
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 200, 100, 100)];
    
    //绘圆带有边框
    //UIImage *image = [UIImage imageWithIconName:@"1" borderImage:@"2" border:30];
    
    //绘图自定义
    //imageView.image = [UIImage circleImage:[UIImage imageNamed:@"1"] withParam:10];
    
    //自定义2:
    imageView.image = [UIImage drawCircleImage:[UIImage imageNamed:@"1"]];
    [self.view addSubview:imageView];
    */
    
    
    //方2：通过iamgeView的layer属性设置
//    UIImage *circleImage = [UIImage imageNamed:@"1"];
//    UIImageView *circleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 300, 100, 100)];
//    circleImageView.image = circleImage;
//    circleImageView.layer.masksToBounds = YES;
//    circleImageView.layer.cornerRadius = 50;
//    [self.view addSubview:circleImageView];
    
    
//    KitView *kv = [[KitView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//   
//    [self.view addSubview:kv];
    
    
    //方3:drawLayer:inContext：方法是一个绘制图层内容的代理方法。为了能够调用drawLayer:inContext：方法，我们需要设定图层的代理对象。但要注意，不应该将UIView对象设置为显示层的委托对象，这是因为UIView对象已经是隐式层的代理对象，再将它设置为另一个层的委托对象就会出问题。轻量级的做法是：编写负责绘图形的代理类。
    /**
    //- (void)drawLayer:(CALayer*)layer inContext:(CGContextRef)ctx 来内部代理层实现绘图
     
    _layerDeleagete = [[MyLayerDelegate alloc] init];
    //1.创建自定义的layer
    _layer = [CALayer layer];
    //2.设置layer的属性
    _layer.backgroundColor= [UIColor blackColor].CGColor;
    _layer.frame=CGRectMake(100, 100, 200, 200);
    _layer.delegate = _layerDeleagete;
    [_layer setNeedsDisplay];
    //3.添加layer
    [self.view.layer addSublayer:_layer];
    */
    
    
    //UIImage画图
    /*
    UIImage *picture = [UIImage imageNamed:@"1"];
    
    CGSize size = [picture size];
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(size.width * 2, size.height), NO, 0.25);
    
    [picture drawAtPoint:CGPointMake(0, 0)];
    
    [picture drawAtPoint:CGPointMake(size.width, 0)];
    
    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:im];
    
    [self.view addSubview: imageView];
    
    imageView.center = self.view.center;
    */
    
    
    //方4:创建一个layer(Quartz框架下，底层)绘制层

    CALayer *layer = [DrawLayer layer];
    //背景色
    layer.backgroundColor = [UIColor yellowColor].CGColor;
    //frame
    layer.frame = CGRectMake(100, 100, 100, 100);
    //关键性一步， 需调用才能实现
    [layer setNeedsDisplay];
    //在试图控制层的layer上展示
    [self.view.layer addSublayer:layer];

    
    //从自定义绘制的图层中添加图片(imageView封装原理)
//    layer.contents = (id)[UIImage imageNamed:@"1"].CGImage;
//    layer.cornerRadius = 50;
//    layer.masksToBounds = YES;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

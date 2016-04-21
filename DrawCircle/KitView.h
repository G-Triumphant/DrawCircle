//
//  KitView.h
//  DrawCircle
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

//UIView对象本身就是一个隐式层的代理对象

//定义协议类
//在UIView子类的drawLayer:inContext：方法中实现绘图任务。drawLayer:inContext：方法是一个绘制图层内容的代理方法。为了能够调用drawLayer:inContext：方法，我们需要设定图层的代理对象。但要注意，不应该将UIView对象设置为显示层的委托对象，这是因为UIView对象已经是隐式层的代理对象，再将它设置为另一个层的委托对象就会出问题。轻量级的做法是：编写负责绘图形的代理类。

@interface MylayerDelegate : NSObject

@end

@interface KitView : UIView


@end

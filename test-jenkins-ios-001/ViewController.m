//
//  ViewController.m
//  test-jenkins-ios-001
//
//  Created by liuyong on 17/9/21.
//  Copyright © 2017年 liuyong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //这里创建一个圆角矩形的按钮
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // 能够定义的button类型有以下6种，
    // typedef enum {
    // UIButtonTypeCustom = 0, 自定义风格
    // UIButtonTypeRoundedRect, 圆角矩形
    // UIButtonTypeDetailDisclosure, 蓝色小箭头按钮，主要做详细说明用
    // UIButtonTypeInfoLight, 亮色感叹号
    // UIButtonTypeInfoDark, 暗色感叹号
    // UIButtonTypeContactAdd, 十字加号按钮
    // } UIButtonType;
    
    //给定button在view上的位置
    button1.frame = CGRectMake(20, 120, 280, 40);
    
    //button背景色
    button1.backgroundColor = [UIColor clearColor];
    
    //设置button填充图片
    //[button1 setImage:[UIImage imageNamed:@"btng.png"] forState:UIControlStateNormal];
    
    //设置button标题
    [button1 setTitle:@"点击" forState:UIControlStateNormal];
    
    /* forState: 这个参数的作用是定义按钮的文字或图片在何种状态下才会显现*/
    //以下是几种状态
    // enum {
    // UIControlStateNormal = 0, 常规状态显现
    // UIControlStateHighlighted = 1 << 0, 高亮状态显现
    // UIControlStateDisabled = 1 << 1, 禁用的状态才会显现
    // UIControlStateSelected = 1 << 2, 选中状态
    // UIControlStateApplication = 0x00FF0000, 当应用程序标志时
    // UIControlStateReserved = 0xFF000000 为内部框架预留，可以不管他
    // };
    
    /*
     * 默认情况下，当按钮高亮的情况下，图像的颜色会被画深一点，如果这下面的这个属性设置为no，
     * 那么可以去掉这个功能
     */
    button1.adjustsImageWhenHighlighted = NO;
    /*跟上面的情况一样，默认情况下，当按钮禁用的时候，图像会被画得深一点，设置NO可以取消设置*/
    button1.adjustsImageWhenDisabled = NO;
    /* 下面的这个属性设置为yes的状态下，按钮按下会发光*/
    button1.showsTouchWhenHighlighted = YES;
    
    /* 给button添加事件，事件有很多种，我会单独开一篇博文介绍它们，下面这个时间的意思是
     按下按钮，并且手指离开屏幕的时候触发这个事件，跟web中的click事件一样。
     触发了这个事件以后，执行butClick:这个方法，addTarget:self 的意思是说，这个方法在本类中
     也可以传入其他类的指针*/
    //[button1 addTarget:self action:@selector(butClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //显示控件
    [self.view addSubview:button1];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  BuglyHotfix
//
//  Created by 小飞鸟 on 2018/4/11.
//  Copyright © 2018年 小飞鸟. All rights reserved.
//

#import "ViewController.h"
#import "ZHWebViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UIView * view2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self addSubViewToSuperView];
    
}

#pragma mark 添加子控件
-(void)addSubViewToSuperView{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame =CGRectMake(100, 100, 50, 50);
    [btn setTitle:@"Test" forState:0];
    [btn setTitleColor:[UIColor redColor] forState:0];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:1 <<  0];
    [self.view addSubview:btn];
    
    
    UIView * view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 300, 50, 50)];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    self.view2=view1;
    [self setView2:view1];
}

#pragma mark 点击方法
-(void)btnClick{
    
    self.view2.backgroundColor = [UIColor yellowColor];
    
    ZHWebViewController * web = [ZHWebViewController new];
    [self presentViewController:web animated:YES completion:nil];
    
}

@end

//
//  ViewController.m
//  CFMultipleControllerView
//
//  Created by Peak on 16/7/27.
//  Copyright © 2016年 陈峰. All rights reserved.
//

#import "ViewController.h"
#import "CFDemoViewController.h"


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    
    
    [self sutupSubViews];
    
}

#pragma mark 布局子控件
- (void)sutupSubViews
{
    UILabel *titleL = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.cf_width, 50)];
    titleL.numberOfLines = 0;
    titleL.textAlignment = NSTextAlignmentCenter;
    titleL.textColor = CFRandomColor;
    titleL.text = @"支持cocoapods导入--- 提供了现在 绝大多数app 主流 两种切换控制器view的效果样式";
    [self.view addSubview:titleL];
    
    UILabel *titleL0 = [[UILabel alloc] initWithFrame:CGRectMake(0, 180, self.view.cf_width, 40)];
    titleL0.numberOfLines = 0;
    titleL0.textAlignment = NSTextAlignmentCenter;
    titleL0.textColor = CFRandomColor;
    titleL0.text = @"每个title不等长";
    [self.view addSubview:titleL0];
    
    UIButton *btn0 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn0 setTitle:@"点此进入-->延迟切换(滚动结束后切换)>>>" forState:UIControlStateNormal];
    [btn0 addTarget:self action:@selector(toVC0) forControlEvents:UIControlEventTouchUpInside];
    btn0.frame = CGRectMake(0, 220, self.view.cf_width, 50);
    [btn0 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn0.backgroundColor = CFRandomColor;
    [self.view addSubview:btn0];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setTitle:@"点此进入-->及时切换(滚动时切换---最难实现的效果)>>>" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(toVC1) forControlEvents:UIControlEventTouchUpInside];
    btn1.frame = CGRectMake(0, 280, self.view.cf_width, 65);
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn1.titleLabel.numberOfLines = 0;
    btn1.backgroundColor = CFRandomColor;
    [self.view addSubview:btn1];
    
    
    UILabel *titleL1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 350, self.view.cf_width, 40)];
    titleL1.numberOfLines = 0;
    titleL1.textAlignment = NSTextAlignmentCenter;
    titleL1.textColor = CFRandomColor;
    titleL1.text = @"每个title 等长  取最长";
    [self.view addSubview:titleL1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.titleLabel.numberOfLines = 0;
    [btn2 setTitle:@"实现了淘宝app首页淘宝头条<没有实现>的效果\n点此进入-->及时切换、标题颜色会渐变(滚动时切换)--->>>\n<游久看比赛>app就是这个效果" forState:UIControlStateNormal];
    
    [btn2 addTarget:self action:@selector(toVC2) forControlEvents:UIControlEventTouchUpInside];
    btn2.frame = CGRectMake(0, 380, self.view.cf_width, 110);
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn2.backgroundColor = CFRandomColor;
    [self.view addSubview:btn2];
    
    // QQ交流
    UILabel *qqLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(btn2.frame)+30, self.view.cf_width, 50)];
    qqLabel.text = @"交流QQ 545486205";
    qqLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:qqLabel];
}

#pragma mark - button actions
- (void)toVC0
{
    CFDemoViewController *toVC = [[CFDemoViewController alloc] init];
    toVC.demoType = demoType0;
    [self.navigationController pushViewController:toVC animated:YES];
}

- (void)toVC1
{
    CFDemoViewController *toVC = [[CFDemoViewController alloc] init];
    toVC.demoType = demoType1;
    [self.navigationController pushViewController:toVC animated:YES];
}

- (void)toVC2
{
    CFDemoViewController *toVC = [[CFDemoViewController alloc] init];
    toVC.demoType = demoType2;
    [self.navigationController pushViewController:toVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  CFDemoViewController.m
//  CFMultipleControllerView
//
//  Created by Peak on 16/7/27.
//  Copyright © 2016年 陈峰. All rights reserved.
//

#import "CFDemoViewController.h"

@interface CFDemoViewController ()


@property (nonatomic, strong) CFMultipleControllerView *multipleControllerView;

@property (nonatomic, strong) CFMultipleControllerView *multipleControllerView1;

@end

@implementation CFDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.title = @"效果展示";
    
    
    if (self.demoType == demoType0) {
        [self.view addSubview:self.multipleControllerView];
        self.multipleControllerView.scrollType = CFScrollTypeDelay;
    } else if (self.demoType == demoType1){
        self.multipleControllerView.scrollType = CFScrollTypeImmediately;
        [self.view addSubview:self.multipleControllerView];
    } else {
        self.multipleControllerView1.scrollType = CFScrollTypeTitleEqualWidthImmediately;
        [self.view addSubview:self.multipleControllerView1];
    }
    
}

#pragma mark - lazy
- (CFMultipleControllerView *)multipleControllerView1
{
    if (!_multipleControllerView1) {
        _multipleControllerView1 = [[CFMultipleControllerView alloc] initWithFrame:self.view.bounds];
        _multipleControllerView1.cf_y = 64;
        _multipleControllerView1.titleNames = @[@"齐天大圣", @"暗夜猎手", @"阿卡丽", @"卡卡罗特",  @"寒冰", @"蛮族之王"];
        _multipleControllerView1.childViewControllerNames = @[@"QTDSViewController", @"AYLSViewController", @"AKLViewController", @"KKLTViewController",   @"HBViewController", @"MZZWViewController"];
        
        //        _multipleControllerView1.titleNames = @[@"齐天大圣", @"齐天大圣", @"齐天大圣", @"齐天大圣", @"齐天大圣", @"齐天大圣", @"齐天大圣"];
        //        _multipleControllerView1.childViewControllerNames = @[@"QTDSViewController", @"QTDSViewController", @"QTDSViewController", @"QTDSViewController", @"QTDSViewController", @"QTDSViewController", @"QTDSViewController"];
        
        
        _multipleControllerView1.nomalColor = [UIColor blueColor];
        _multipleControllerView1.selectedColor = [UIColor redColor];
    }
    return _multipleControllerView1;
}


- (CFMultipleControllerView *)multipleControllerView
{
    if (!_multipleControllerView) {
        _multipleControllerView = [[CFMultipleControllerView alloc] initWithFrame:self.view.bounds];
        // 标题滚动条 高度  默认45  可自己修改
        //        _multipleControllerView.titleScrollViewHeight = 350;
        _multipleControllerView.cf_y = 64;
        
        _multipleControllerView.titleNames = @[@"齐天大圣啊",@"暗夜猎手", @"卡丽", @"卡卡罗特", @"蛮族之王", @"寒冰"];
        _multipleControllerView.childViewControllerNames = @[@"QTDSViewController", @"AYLSViewController", @"AKLViewController", @"KKLTViewController", @"MZZWViewController", @"HBViewController"];
        
        //                _multipleControllerView.titleNames = @[@"齐天大圣", @"齐天大圣", @"齐天大圣", @"齐天大圣", @"齐天大圣", @"齐天大圣"];
        //        _multipleControllerView.childViewControllerNames = @[@"QTDSViewController", @"QTDSViewController", @"QTDSViewController", @"QTDSViewController", @"QTDSViewController", @"QTDSViewController", @"QTDSViewController"];
        
        //        _multipleControllerView.titleNames = @[@"齐天大圣", @"暗夜猎手", @"阿卡丽"];
        
        _multipleControllerView.nomalColor = [UIColor blueColor];
        _multipleControllerView.selectedColor = [UIColor blackColor];
    }
    return _multipleControllerView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

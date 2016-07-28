//
//  CFBaseViewController.m
//  CFMultipleControllerView
//
//  Created by Peak on 16/7/27.
//  Copyright © 2016年 陈峰. All rights reserved.
//

#import "CFBaseViewController.h"
#import <CFMultipleControllerView/CFMultipleControllerView.h>

@interface CFBaseViewController ()

@end

@implementation CFBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.backgroundColor = CFRandomColor;
    [self.view addSubview:self.imgView];
}

/*  */
- (UIImageView *)imgView
{
    if (!_imgView) {
        _imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
        
    }
    return _imgView;
}

- (void)setImgName:(NSString *)imgName
{
    _imgName = imgName;
    self.imgView.image = [UIImage imageNamed:imgName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

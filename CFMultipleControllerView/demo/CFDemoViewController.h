//
//  CFDemoViewController.h
//  CFMultipleControllerView
//
//  Created by Peak on 16/7/27.
//  Copyright © 2016年 陈峰. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CFMultipleControllerView/CFMultipleControllerView.h>

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, CFDemoType)
{
    demoType0,
    demoType1,
    demoType2
};

@interface CFDemoViewController : UIViewController

/* 不同滚动效果的demo */
@property (nonatomic, assign) CFDemoType demoType;

@end
//
//  CFMultipleControllerView.h
//  CFMultipleControllerView
//
//  Created by Peak on 16/7/27.
//  Copyright © 2016年 陈峰. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for CFMultipleControllerView.
FOUNDATION_EXPORT double CFMultipleControllerViewVersionNumber;

//! Project version string for CFMultipleControllerView.
FOUNDATION_EXPORT const unsigned char CFMultipleControllerViewVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <CFMultipleControllerView/PublicHeader.h>


#import "CFConfig.h"
#import "CFMacro.h"
#import "CFTitleButton.h"
#import "UIView+CFFrame.h"
#import "NSString+Additions.h"
#import "UIColor+Additions.h"


typedef NS_ENUM(NSInteger, CFScrollType){
    CFScrollTypeDelay,     // 延时  --  title不等长
    CFScrollTypeImmediately,   // 立即  --  title不等长
    CFScrollTypeTitleEqualWidthImmediately    // 立即  --  title 等长  取最长
};

@interface CFMultipleControllerView : UIView

/* titleScrollView 滚动条的 高度  默认45 */
@property (nonatomic, assign) CGFloat titleScrollViewHeight;

/* title名数组 */
@property (nonatomic, strong) NSArray<NSString *> *titleNames;


/* 设置 未选中时(默认)的 颜色 */
@property (nonatomic, strong) UIColor *nomalColor;

/* 设置 选中时的 颜色 */
@property (nonatomic, strong) UIColor *selectedColor;

/* 子控制器名数组   每个 titleName 对应一个 子控制器 名 */
@property (nonatomic, strong) NSArray *childViewControllerNames;

/* 滚动样式 */
@property (nonatomic, assign) CFScrollType scrollType;

@end


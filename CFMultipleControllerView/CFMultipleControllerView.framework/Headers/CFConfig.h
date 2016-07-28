//
//  CFConfig.h
//  CFMultipleControllerView
//
//  Created by Peak on 16/7/14.
//  Copyright © 2016年 陈峰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#pragma mark -- 屏幕尺寸 ---
extern CGFloat ScreenWidth;
extern CGFloat ScreenHeight;
extern CGFloat CFScreenScale;
extern CGFloat CFFontAdapt;  //字体适配参数
extern CGFloat CFScreenAdapt; //屏幕适配参数

extern CGFloat CFOnePixel; // 1像素

@interface CFConfig : NSObject
+ (void)startConfig;
@end

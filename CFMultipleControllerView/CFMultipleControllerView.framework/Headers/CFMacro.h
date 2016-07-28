//
//  CFMacro.h
//  CFDropDownMenuView
//
//  Created by Peak on 16/7/13.
//  Copyright © 2016年 陈峰. All rights reserved.
//

#ifndef CFMacro_h
#define CFMacro_h


/**
 *  尺寸相关 宏
 */
#define CFScreenWidth  ([UIScreen mainScreen].bounds.size.width)
#define CFScreenHeight  ([UIScreen mainScreen].bounds.size.height)


/** 颜色相关 */
// 创建颜色 对象
#define NewColor(R,G,B,A) [UIColor colorWithRed:(R)/255.0 green:(G)/255.0 blue:(B)/255.0 alpha:(A)]
// 随机色
#define CFRandomColor NewColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255), 1.0)

#define  CFAPPMainColor  [UIColor colorWithHexString:@"ff6633"]


#define  CFTextGrayColor [UIColor colorWithHexString:@"999999"]


#endif /* CFMacro_h */
//
//  UIView+MFUIkit.h
//  MFUIKit
//
//  Created by wuyazi on 2020/5/28.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MFUIConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (MFUIkit)

/// 创建config实例对象
@property (class, nonatomic, copy, readonly) MFUIConfig *(^mf_creat)(void);
@property (class, nonatomic, copy, readonly) MFUIConfig *(^mf_creatFrame)(CGRect frame);

@end

NS_ASSUME_NONNULL_END

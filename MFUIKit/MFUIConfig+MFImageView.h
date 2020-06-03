//
//  MFUIConfig+MFImageView.h
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFUIConfig (MFImageView)

/// 图片
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_image)(UIImage *image);

/// 模式
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_contentMode)(UIViewContentMode contentMode);

/// 返回UIImageView实例
@property (nonatomic, copy, readonly) UIImageView *(^mf_layoutImageView)(void);
@end

NS_ASSUME_NONNULL_END

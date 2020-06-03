//
//  MFUIConfig+MFButton.h
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFUIConfig (MFButton)

/// 设置标题
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleNormal)(NSString *title);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleSelected)(NSString *title);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleDisabled)(NSString *title);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleHighlighted)(NSString *title);

/// 设置富文本
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_attributeNormal)(NSAttributedString *attribute);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_attributeSelected)(NSAttributedString *attribute);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_attributeDisabled)(NSAttributedString *attribute);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_attributeHighlighted)(NSAttributedString *attribute);

/// 设置文本颜色
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleColorNormal)(UIColor *color);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleColorSelected)(UIColor *color);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleColorDisabled)(UIColor *color);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleColorHighlighted)(UIColor *color);

/// 背景图片
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_backgroundImageNormal)(UIImage *image);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_backgroundImageSelected)(UIImage *image);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_backgroundImageDisabled)(UIImage *image);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_backgroundImageHighlighted)(UIImage *image);

/// 内容图片
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_imageNormal)(UIImage *image);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_imageSelected)(UIImage *image);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_imageDisabled)(UIImage *image);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_imageHighlighted)(UIImage *image);

// 设置内边距
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_titleInsets)(UIEdgeInsets insets);
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_imageInsets)(UIEdgeInsets insets);

/// 返回button实例
@property (nonatomic, copy, readonly) UIButton *(^mf_layoutBtn)(void);
@end

NS_ASSUME_NONNULL_END

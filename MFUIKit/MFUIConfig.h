//
//  MFUIConfig.h
//  MFUIKit
//
//  Created by wuyazi on 2020/5/28.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MFUIConfig : NSObject

/// 创建的视图实例对象，不需要外部赋值
@property (nonatomic, strong) UIView *view;
/// 背景颜色
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_backgroundColor)(UIColor *color);

/// 设置frame
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_frame)(CGRect frame);

/// 设置center
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_center)(CGPoint center);

/// 父视图
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_targetView)(UIView *targetView);

/// 设置约束用
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_makeConstrains)(void(^)(UIView *view, UIView *superView));

/// 事件回调
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_action)(void(^)(UIView *view));

/// 防连击延时响应时长，默认为0
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_delayEnableTime)(CGFloat time);

/// 设置圆角，四个角同时设置
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_cornerRadius)(CGFloat cornerRadius);

/// 设置圆角，可以控制设置圆角的位置
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_clipCorner)(UIRectCorner rectCorner, CGFloat radius);

/// 设置边框宽度
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_borderWidth)(CGFloat boardWidth);

/// 设置边框颜色
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_borderColor)(UIColor *boardColor);

/// 设置字体大小
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_font)(UIFont *font);

/// 设置字体颜色
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_text)(NSString *text);

/// 设置字体颜色
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_textColor)(UIColor *textColor);

/// 设置字体颜色
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_textAlignment)(NSTextAlignment textAlignment);

/// 截断方式
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_lineBreakMode)(NSLineBreakMode lineBreakMode);

/// 行数
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_numberOfLines)(NSInteger numberOfLines);

/// 设置atrribute
@property (nonatomic, copy, readonly) MFUIConfig *(^mf_attribute)(NSAttributedString *attribute);

/// 返回视图实例，返回其真实类型，但都以UIView接收
@property (nonatomic, copy, readonly) UIView *(^mf_layout)(void);

@end

NS_ASSUME_NONNULL_END

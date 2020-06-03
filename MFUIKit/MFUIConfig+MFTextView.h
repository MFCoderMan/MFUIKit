//
//  MFUIConfig+MFTextView.h
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFUIConfig (MFTextView)

/// 返回textView实例
@property (nonatomic, copy, readonly) UITextView *(^mf_layoutTextView)(void);
@end

NS_ASSUME_NONNULL_END

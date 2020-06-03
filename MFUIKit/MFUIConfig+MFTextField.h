//
//  MFUIConfig+MFTextField.h
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFUIConfig (MFTextField)

/// 返回textField实例
@property (nonatomic, copy, readonly) UITextField *(^mf_layoutTextField)(void);
@end

NS_ASSUME_NONNULL_END

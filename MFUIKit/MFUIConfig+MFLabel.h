//
//  MFUIConfig+MFLabel.h
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFUIConfig (MFLabel)

/// 返回label实例
@property (nonatomic, copy, readonly) UILabel *(^mf_layoutLabel)(void);
@end

NS_ASSUME_NONNULL_END

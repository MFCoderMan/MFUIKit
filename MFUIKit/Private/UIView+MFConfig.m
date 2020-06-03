//
//  UIView+MFConfig.m
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "UIView+MFConfig.h"
#import <Objc/runtime.h>

@implementation UIView (MFConfig)

- (void)setConfig:(MFUIConfig *)config {
    objc_setAssociatedObject(self, @selector(config), config, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (MFUIConfig *)config {
    return objc_getAssociatedObject(self, @selector(config));
}

@end

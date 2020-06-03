//
//  UIView+MFUIkit.m
//  MFUIKit
//
//  Created by wuyazi on 2020/5/28.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "UIView+MFUIkit.h"
#import <Objc/runtime.h>

@interface UIView ()

@end

@implementation UIView (MFUIkit)

+ (MFUIConfig * _Nonnull (^)(void))mf_creat {
    return ^(void) {
        MFUIConfig *config = [[MFUIConfig alloc] init];
        UIView *v = [[[self class] alloc] init];
        config.view = v;
        return config;
    };
}

+ (MFUIConfig * _Nonnull (^)(CGRect))mf_creatFrame {
    return ^(CGRect frame){
        MFUIConfig *config = [[MFUIConfig alloc] init];
        UIView *v = [[[self class] alloc] init];
        v.frame = frame;
        config.view = v;
        return config;
    };
}

@end

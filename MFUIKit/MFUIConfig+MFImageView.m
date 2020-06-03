//
//  MFUIConfig+MFImageView.m
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig+MFImageView.h"

@implementation MFUIConfig (MFImageView)

- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_image {
    return ^(UIImage *image) {
        ((UIImageView *)(self.view)).image = image;
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIViewContentMode))mf_contentMode {
    return ^(UIViewContentMode contentMode) {
        ((UIImageView *)(self.view)).contentMode = contentMode;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(void))mf_layoutImageView {
    return ^(void) {
        return (UIImageView *)self.view;
    };
}
@end

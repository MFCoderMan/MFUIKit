//
//  MFUIConfig+MFButton.m
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig+MFButton.h"

@implementation MFUIConfig (MFButton)

#pragma mark - 文本
- (MFUIConfig * _Nonnull (^)(NSString * _Nonnull))mf_titleNormal {
    return ^(NSString *title) {
        [(UIButton *)self.view setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSString * _Nonnull))mf_titleSelected {
    return ^(NSString *title) {
        [(UIButton *)self.view setTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSString * _Nonnull))mf_titleDisabled {
    return ^(NSString *title) {
        [(UIButton *)self.view setTitle:title forState:UIControlStateDisabled];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSString * _Nonnull))mf_titleHighlighted {
    return ^(NSString *title) {
        [(UIButton *)self.view setTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSAttributedString * _Nonnull))mf_attributeNormal {
    return ^(NSAttributedString *attribute) {
        [(UIButton *)self.view setAttributedTitle:attribute forState:UIControlStateNormal];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSAttributedString * _Nonnull))mf_attributeSelected {
    return ^(NSAttributedString *attribute) {
        [(UIButton *)self.view setAttributedTitle:attribute forState:UIControlStateSelected];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSAttributedString * _Nonnull))mf_attributeDisabled {
    return ^(NSAttributedString *attribute) {
        [(UIButton *)self.view setAttributedTitle:attribute forState:UIControlStateDisabled];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSAttributedString * _Nonnull))mf_attributeHighlighted {
    return ^(NSAttributedString *attribute) {
        [(UIButton *)self.view setAttributedTitle:attribute forState:UIControlStateHighlighted];
        return self;
    };
}

#pragma mark - color
- (MFUIConfig * _Nonnull (^)(UIColor * _Nonnull))mf_titleColorNormal {
    return ^(UIColor *color) {
        [(UIButton *)self.view setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIColor * _Nonnull))mf_titleColorSelected {
    return ^(UIColor *color) {
        [(UIButton *)self.view setTitleColor:color forState:UIControlStateSelected];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIColor * _Nonnull))mf_titleColorDisabled {
    return ^(UIColor *color) {
        [(UIButton *)self.view setTitleColor:color forState:UIControlStateDisabled];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIColor * _Nonnull))mf_titleColorHighlighted {
    return ^(UIColor *color) {
        [(UIButton *)self.view setTitleColor:color forState:UIControlStateHighlighted];
        return self;
    };
}

#pragma mark - image
- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_backgroundImageNormal {
    return ^(UIImage *image) {
        [(UIButton *)self.view setBackgroundImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_backgroundImageSelected {
    return ^(UIImage *image) {
        [(UIButton *)self.view setBackgroundImage:image forState:UIControlStateSelected];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_backgroundImageDisabled {
    return ^(UIImage *image) {
        [(UIButton *)self.view setBackgroundImage:image forState:UIControlStateDisabled];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_backgroundImageHighlighted {
    return ^(UIImage *image) {
        [(UIButton *)self.view setBackgroundImage:image forState:UIControlStateHighlighted];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_imageNormal {
    return ^(UIImage *image) {
        [(UIButton *)self.view setImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_imageSelected {
    return ^(UIImage *image) {
        [(UIButton *)self.view setImage:image forState:UIControlStateSelected];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_imageDisabled {
    return ^(UIImage *image) {
        [(UIButton *)self.view setImage:image forState:UIControlStateDisabled];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIImage * _Nonnull))mf_imageHighlighted {
    return ^(UIImage *image) {
        [(UIButton *)self.view setImage:image forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(void))mf_layoutBtn {
    return ^(void) {
        return (UIButton *)self.view;
    };
}
@end

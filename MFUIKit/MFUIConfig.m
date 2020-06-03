//
//  MFUIConfig.m
//  MFUIKit
//
//  Created by wuyazi on 2020/5/28.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig.h"
#import "UIView+MFConfig.h"
#import "MFFunction.h"

@interface MFUIConfig ()

@property (nonatomic, strong) void(^actionBlock)(UIView *tapView);
@property (nonatomic, assign) CGFloat mf_delayTime; // 按钮的防连击时间，单位：s，默认为0
@end

@implementation MFUIConfig

- (instancetype)init {
    if (self = [super init]) {
        self.mf_delayTime = 0;
    }
    return self;
}

- (MFUIConfig * _Nonnull (^)(CGRect))mf_frame {
    return ^(CGRect frame) {
        self.view.frame = frame;
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(CGPoint))mf_center {
    return ^(CGPoint center) {
        self.view.center = center;
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIColor * _Nonnull))mf_backgroundColor {
    return ^(UIColor *backgroundColor) {
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIView * _Nonnull))mf_targetView {
    return ^(UIView *targetView) {
        // 父视图持有config，防止config提前释放，添加selector时无法执行的问题
        // 带来的一个问题就是该config的释放时机延迟到了该targetView释放的时候
        targetView.config = self;
        [targetView addSubview:self.view];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(void (^ _Nonnull)(UIView *, UIView *)))mf_makeConstrains {
    return ^(void(^callback)(UIView *view ,UIView *superView)) {
        if (callback) {
            callback(self.view, self.view.superview);
        }
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(void (^ _Nonnull)(UIView * _Nonnull)))mf_action {
    return ^(void(^actionCallback)(UIView *view)) {
        self.actionBlock = actionCallback;
        return self;
    };
}

- (void)setActionBlock:(void (^)(UIView *))actionBlock {
    _actionBlock = [actionBlock copy];
    if (!self.view) {
        return;
    }
    
    if ([self.view isKindOfClass:UIButton.class]) {
        UIButton *button = (UIButton *)self.view;
        [button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    } else if ([self.view isKindOfClass:UIResponder.class]) {
        self.view.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickAction:)];
        [self.view addGestureRecognizer:tap];
    } else {
        NSAssert(NO, @"实例对象类型非法，非UIView子类");
    }
}

- (MFUIConfig * _Nonnull (^)(CGFloat))mf_delayEnableTime {
    return ^(CGFloat time) {
        self.mf_delayTime = time;
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(CGFloat))mf_cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.view.layer.masksToBounds = YES;
        self.view.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIRectCorner, CGFloat))mf_clipCorner {
    return ^(UIRectCorner rectCorner, CGFloat radius) {
        mf_clipCorner(self.view, rectCorner, radius);
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(CGFloat))mf_borderWidth {
    return ^(CGFloat width) {
        self.view.layer.borderWidth = width;
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIColor * _Nonnull))mf_borderColor {
    return ^(UIColor *color) {
        self.view.layer.borderColor = color.CGColor;
        return self;
    };
}

- (void)clickAction:(id)sender {
    if (self.mf_delayTime > 0) {
        self.view.userInteractionEnabled = NO;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(self.mf_delayTime *1000 * NSEC_PER_MSEC)), dispatch_get_main_queue(), ^{
            self.view.userInteractionEnabled = YES;
        });
    }
    
    if (self.actionBlock) {
        self.actionBlock(self.view);
    }
}

- (MFUIConfig * _Nonnull (^)(UIFont * _Nonnull))mf_font {
    return ^(UIFont *font) {
        [self _configProperty:font type:@"font"];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSString * _Nonnull))mf_text {
    return ^(NSString *text) {
        [self _configProperty:text type:@"text"];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(UIColor * _Nonnull))mf_textColor {
    return ^(UIColor *textColor) {
        [self _configProperty:textColor type:@"textColor"];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSTextAlignment))mf_textAlignment {
    return ^(NSTextAlignment textAlignment) {
        [self _configProperty:@(textAlignment) type:@"textAlignment"];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSInteger))mf_numberOfLines {
    return ^(NSInteger numberOfLines) {
        [self _configProperty:@(numberOfLines) type:@"numberOfLines"];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSLineBreakMode))mf_lineBreakMode {
    return ^(NSLineBreakMode lineBreakMode) {
        [self _configProperty:@(lineBreakMode) type:@"lineBreakMode"];
        return self;
    };
}

- (MFUIConfig * _Nonnull (^)(NSAttributedString * _Nonnull))mf_attribute {
    return ^(NSAttributedString *attribute) {
        [self _configProperty:attribute type:@"attribute"];
        return self;
    };
}

- (void)_configProperty:(id)value type:(NSString *)type {
    if ([self.view isKindOfClass:UIButton.class]) {
        if ([type isEqualToString:@"font"]) {
            ((UIButton *)self.view).titleLabel.font = (UIFont *)value;
        } else if ([type isEqualToString:@"text"]) {
            [(UIButton *)self.view setTitle:(NSString *)value forState:UIControlStateNormal];
        } else if ([type isEqualToString:@"textColor"]) {
            [((UIButton *)self.view) setTitleColor:(UIColor *)value forState:UIControlStateNormal];
        } else if ([type isEqualToString:@"attribute"]) {
            [((UIButton *)self.view) setAttributedTitle:(NSAttributedString *)value forState:UIControlStateNormal];
        } else if ([type isEqualToString:@"numberOfLines"]) {
            ((UIButton *)self.view).titleLabel.numberOfLines = [value integerValue];
        } else if ([type isEqualToString:@"textAlignment"]) {
            ((UIButton *)self.view).titleLabel.textAlignment = [value integerValue];
        } else if ([type isEqualToString:@"lineBreakMode"]) {
            ((UIButton *)self.view).titleLabel.lineBreakMode = [value integerValue];
        }
    } else if ([self.view isKindOfClass:UILabel.class] ||
              [self.view isKindOfClass:UITextField.class] ||
              [self.view isKindOfClass:UITextView.class]) {
               
       if ([type isEqualToString:@"font"]) {
           ((UILabel *)self.view).font = (UIFont *)value;
       } else if ([type isEqualToString:@"text"]) {
           ((UILabel *)self.view).text = (NSString *)value;
       } else if ([type isEqualToString:@"textColor"]) {
           ((UILabel *)self.view).textColor = (UIColor *)value;
       } else if ([type isEqualToString:@"attribute"]) {
           ((UILabel *)self.view).attributedText = (NSAttributedString *)value;
       } else if ([type isEqualToString:@"numberOfLines"]) {
           ((UILabel *)self.view).numberOfLines = [value integerValue];
       } else if ([type isEqualToString:@"textAlignment"]) {
           ((UILabel *)self.view).textAlignment = [value integerValue];
       } else if ([type isEqualToString:@"lineBreakMode"]) {
           ((UILabel *)self.view).lineBreakMode = [value integerValue];
       }
   }
}

#pragma mark - 返回创建的视图实例对象
- (UIView *(^)(void))mf_layout {
    return ^(void) {
        return self.view;
    };
}
@end

//
//  MFUIConfig+MFTextView.m
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig+MFTextView.h"

@implementation MFUIConfig (MFTextView)

- (UITextView *(^)(void))mf_layoutTextView {
    return ^(void) {
        return (UITextView *)self.view;
    };
}
@end

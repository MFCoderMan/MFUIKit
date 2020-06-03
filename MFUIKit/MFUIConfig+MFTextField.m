//
//  MFUIConfig+MFTextField.m
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig+MFTextField.h"

@implementation MFUIConfig (MFTextField)

- (UITextField *(^)(void))mf_layoutTextField {
    return ^(void) {
        return (UITextField *)self.view;
    };
}
@end

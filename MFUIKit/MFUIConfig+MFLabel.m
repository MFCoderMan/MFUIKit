//
//  MFUIConfig+MFLabel.m
//  MFUIKit
//
//  Created by wuyazi on 2020/5/29.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#import "MFUIConfig+MFLabel.h"

@implementation MFUIConfig (MFLabel)

- (UILabel *(^)(void))mf_layoutLabel {
    return ^(void) {
        return (UILabel *)self.view;
    };
}
@end

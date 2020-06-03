//
//  MFFunction.h
//  MFUIKit
//
//  Created by wuyazi on 2020/4/30.
//  Copyright © 2020 wuyazi. All rights reserved.
//

#ifndef MFFunction_h
#define MFFunction_h
#import <UIKit/UIKit.h>

static void mf_clipCorner(UIView *view, UIRectCorner rectCorner, CGFloat radius)
{
    assert(!CGRectIsEmpty(view.bounds));
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = view.bounds;
    maskLayer.path = maskPath.CGPath;
    view.layer.mask = maskLayer;
}

#endif /* MFFunction_h */

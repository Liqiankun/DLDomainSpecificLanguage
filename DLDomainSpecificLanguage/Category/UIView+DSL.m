//
//  UIView+DSL.m
//  DLDomainSpecificLanguage
//
//  Created by David on 2018/8/14.
//  Copyright © 2018年 David. All rights reserved.
//

#import "UIView+DSL.h"

#define weak_Self __weak typeof(self) weakSelf = self
#define strong_Self __strong typeof((weakSelf)) strongSelf = (weakSelf)

@implementation UIView (DSL)


-(UIView *(^)(CGRect))DSL_frame {
    weak_Self;
    return ^UIView* (CGRect frame) {
        strong_Self;
        strongSelf.frame = frame;
        return strongSelf;
    };
}

- (UIView *(^)(UIColor *))DSL_backgroundColor {
    weak_Self;
    return ^UIView* (UIColor *backgroundColor) {
        strong_Self;
        strongSelf.backgroundColor = backgroundColor;
        return strongSelf;
    };
}

@end

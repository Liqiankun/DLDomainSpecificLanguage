//
//  UIImageView+DSL.m
//  DLDomainSpecificLanguage
//
//  Created by David on 2018/8/14.
//  Copyright © 2018年 David. All rights reserved.
//

#import "UIImageView+DSL.h"

#define weak_Self __weak typeof(self) weakSelf = self
#define strong_Self __strong typeof((weakSelf)) strongSelf = (weakSelf)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
@implementation UIImageView (DSL)
#pragma clang diagnostic pop

-(UIImageView* (^)(UIImage *))DSL_image {
    weak_Self;
    return ^UIImageView* (UIImage *image) {
        strong_Self;
        strongSelf.image = image;
        return strongSelf;
    };
}

@end

//
//  UIImageView+DSL.h
//  DLDomainSpecificLanguage
//
//  Created by David on 2018/8/14.
//  Copyright © 2018年 David. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImageView (DSL)

#pragma mark - UIView
-(UIImageView* (^)(CGRect frame))DSL_frame;

#pragma mark - UIImageView
-(UIImageView* (^)(UIImage *))DSL_image;

@end

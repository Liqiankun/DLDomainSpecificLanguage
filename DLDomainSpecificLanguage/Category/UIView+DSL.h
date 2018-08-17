//
//  UIView+DSL.h
//  DLDomainSpecificLanguage
//
//  Created by David on 2018/8/14.
//  Copyright © 2018年 David. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DSL)

-(UIView* (^)(CGRect))DSL_frame;
- (UIView *(^)(UIColor *))DSL_backgroundColor;

@end

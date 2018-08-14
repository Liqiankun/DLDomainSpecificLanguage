//
//  UIImageView+DSL.h
//  DLDomainSpecificLanguage
//
//  Created by David on 2018/8/14.
//  Copyright © 2018年 David. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIImageView* (^SetImageBlock)(UIImage *);
typedef UIImageView* (^SetFrameBlock)(CGRect frame);

@interface UIImageView (DSL)

-(SetImageBlock)DSL_image;
-(SetFrameBlock)DSL_frame;

@end

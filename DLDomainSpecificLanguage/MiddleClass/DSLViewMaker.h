//
//  DSLViewMaker.h
//  DLDomainSpecificLanguage
//
//  Created by David on 2018/8/17.
//  Copyright © 2018年 David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DSLViewMaker : NSObject

DSLViewMaker *alloc_view(void);

-(DSLViewMaker *(^)(CGRect))frame;
-(DSLViewMaker *(^)(UIColor *))backgroundColor;
-(UIView *)view;

@end

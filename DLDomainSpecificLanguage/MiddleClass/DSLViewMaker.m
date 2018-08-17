//
//  DSLViewMaker.m
//  DLDomainSpecificLanguage
//
//  Created by David on 2018/8/17.
//  Copyright © 2018年 David. All rights reserved.
//

#import "DSLViewMaker.h"

#define weak_Self __weak typeof(self) weakSelf = self
#define strong_Self __strong typeof((weakSelf)) strongSelf = (weakSelf)

@interface DSLViewMaker ()
@property (nonatomic, strong) UIView *view;
@end

@implementation DSLViewMaker

DSLViewMaker *alloc_view(void) {
    return DSLViewMaker.new;
}

-(instancetype)init {
    if (self = [super init]) {
        _view = [[UIView alloc] init];
    }
    return self;
    
}

-(DSLViewMaker *(^)(CGRect))frame {
    weak_Self;
    return ^DSLViewMaker *(CGRect frame) {
        strong_Self;
        strongSelf.view.frame = frame;
        return strongSelf;
    };
}

-(DSLViewMaker *(^)(UIColor *))backgroundColor {
    weak_Self;
    return ^DSLViewMaker *(UIColor *backgroundColor) {
        strong_Self;
        strongSelf.view.backgroundColor = backgroundColor;
        return strongSelf;
    };
}


-(UIView *)view {
    return _view;
}
@end

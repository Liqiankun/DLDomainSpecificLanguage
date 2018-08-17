//
//  ViewController.m
//  DLDomainSpecificLanguage
//
//  Created by David on 2018/8/14.
//  Copyright © 2018年 David. All rights reserved.
//

#import "ViewController.h"
#import "UIView+DSL.h"
#import "UIImageView+DSL.h"
#import "DSLViewMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
    UIView *view = UIView.new.DSL_frame(CGRectMake((screenSize.width -  150) / 2, 40, 150, 150)).DSL_backgroundColor([UIColor redColor]);
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.DSL_frame(CGRectMake((screenSize.width -  400) / 2, 200, 400, 267)).DSL_image([UIImage imageNamed:@"image"]);
    
    UIView *makerView = alloc_view().frame(CGRectMake((screenSize.width -  150) / 2, 480, 150, 150)).backgroundColor([UIColor blueColor]).view;
    
    [self.view addSubview:view];
    [self.view addSubview:imageView];
    [self.view addSubview:makerView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

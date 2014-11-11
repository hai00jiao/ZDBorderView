//
//  ViewController.m
//  BorderView
//
//  Created by zhuchao on 14/11/11.
//  Copyright (c) 2014年 DogDoctor. All rights reserved.
//

#import "ViewController.h"
#import "ZDBorderView.h"
@interface ViewController ()
{
    IBOutlet ZDBorderView *_borderView1;
    IBOutlet ZDBorderView *_borderView2;
    IBOutlet ZDBorderView *_borderView3;
    IBOutlet ZDBorderView *_borderView4;
    IBOutlet ZDBorderView *_borderView5;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_borderView1 setBorderColor:[UIColor redColor]];
    
    [_borderView2 setBorderType:ZDBorderTypeLeft|ZDBorderTypeRight];
    
    [_borderView3 setBorderType:ZDBorderTypeLeft|ZDBorderTypeBottom];
    
    [_borderView4 setBorderType:ZDBorderTypeBottom|ZDBorderTypeRight];
    
    [_borderView4 setBorderType:ZDBorderTypeBottom|ZDBorderTypeRight|ZDBorderTypeLeft];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

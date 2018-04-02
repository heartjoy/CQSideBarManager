//
//  SideBarViewController.m
//  CQSideBarManager
//
//  Created by heartjoy on 2017/11/7.
//  Copyright © 2017年 heartjoy. All rights reserved.
//

#import "SideBarViewController.h"
#import "CQSideBarConst.h"
#import "CQSideBarManager.h"

@interface SideBarViewController ()


@end

@implementation SideBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = SIDEBAR_RANDOM_COLOR;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(closeView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)closeView
{
    [[CQSideBarManager sharedInstance] closeSideBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"SideBarViewController dealloc");
}

@end

//
//  ViewController.m
//  CQSideBarManagerExample
//
//  Created by heartjoy on 2017/11/7.
//  Copyright © 2017年 heartjoy. All rights reserved.
//

#import "ViewController.h"
#import "SideBarViewController.h"

#import "CQSideBarManager.h"

@interface ViewController ()<CQSideBarManagerDelegate>

@end

@implementation ViewController

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions
- (IBAction)showAction:(id)sender {
    [[CQSideBarManager sharedInstance] openSideBar:self];
}

#pragma mark - CQSideBarManagerDelegate
- (UIView *)viewForSideBar
{
    SideBarViewController *sideBarVC = [[SideBarViewController alloc] init];
    sideBarVC.view.cq_width = self.view.cq_width - 35.f;
    return sideBarVC.view;
}

- (BOOL)canCloseSideBar
{
    return YES;
}

@end

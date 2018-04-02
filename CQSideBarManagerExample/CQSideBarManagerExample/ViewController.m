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

@property (nonatomic, strong) SideBarViewController *sideBarVC;

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
    /*
     *  如果使用VC的view作为侧边栏视图，那么需要注意在ARC模式下控制器出了作用域会被释放掉这种情况，导致无法响应点击事件，个别同学已经碰到这种问题，现已作出解释。比如以下这个写法:
     *  SideBarViewController *sideBarVC = [[SideBarViewController alloc] init];
     *  sideBarVC.view.cq_width = self.view.cq_width - 35.f;
     *  return sideBarVC.view;
     */
    return self.sideBarVC.view;
}

- (BOOL)canCloseSideBar
{
    return YES;
}

#pragma mark ---Getter
- (SideBarViewController *)sideBarVC
{
    if (!_sideBarVC) {
        _sideBarVC = [[SideBarViewController alloc] init];
        _sideBarVC.view.cq_width = self.view.cq_width - 35.f;
    }
    return _sideBarVC;
}

@end

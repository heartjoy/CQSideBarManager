//
//  CQSideBarConst.h
//  CQSideBarManager
//
//  Created by heartjoy on 2017/3/7.
//  Copyright © 2017年 heartjoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+CQExtension.h"

#define SIDEBAR_START_POINT CGPointMake(35.f, 0.f)

#define SIDEBAR_ANIMATE_DURATION 0.25f

#define SIDEBAR_COLOR(r,g,b,a) [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:a]
#define SIDEBAR_RANDOM_COLOR  SIDEBAR_COLOR(arc4random_uniform(256),arc4random_uniform(256),arc4random_uniform(256),1)

#define SIDEBAR_SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SIDEBAR_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define SIDEBAR_KEY_WINDOW [UIApplication sharedApplication].keyWindow

UIKIT_EXTERN NSString *const CQSideBarOpenErrorText;

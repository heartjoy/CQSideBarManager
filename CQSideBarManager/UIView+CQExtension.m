//
//  UIView+CQExtension.m
//  CQSideBarManager
//
//  Created by heartjoy on 2017/3/5.
//  Copyright © 2017年 heartjoy. All rights reserved.
//

#import "UIView+CQExtension.h"

@implementation UIView (CQExtension)

- (void)setCq_x:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)cq_x
{
    return self.frame.origin.x;
}

- (void)setCq_y:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)cq_y
{
    return self.frame.origin.y;
}

- (void)setCq_centerX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)cq_centerX
{
    return self.center.x;
}

- (void)setCq_centerY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)cq_centerY
{
    return self.center.y;
}

- (void)setCq_width:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)cq_width
{
    return self.frame.size.width;
}

- (void)setCq_height:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)cq_height
{
    return self.frame.size.height;
}

- (void)setCq_size:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)cq_size
{
    return self.frame.size;
}

- (CGFloat)cq_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setCq_right:(CGFloat)cq_right
{
    CGRect frame = self.frame;
    frame.origin.x = cq_right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)cq_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setCq_bottom:(CGFloat)cq_bottom
{
    CGRect frame = self.frame;
    frame.origin.y = cq_bottom - frame.size.height;
    self.frame = frame;
}

@end

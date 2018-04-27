//
//  UIViewController+GIHViewController.m
//  GIHViewController
//
//  Created by 徐强 on 2018/4/27.
//  Copyright © 2018年 gaizhi. All rights reserved.
//

#import "UIViewController+GIHViewController.h"

@implementation UIViewController (GIHViewController)

- (UIViewController *)focusViewController {

    if (self.presentedViewController) {
        return self.presentedViewController.focusViewController;
    } else if ([self isKindOfClass:[UINavigationController class]]) {
        return [(UINavigationController *)self topViewController].focusViewController;
    } else if ([self isKindOfClass:[UITabBarController class]]) {
        return [(UITabBarController *)self selectedViewController].focusViewController;
    } else {
        return self;
    }
}

@end

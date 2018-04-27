//
//  UIViewController+GIHViewController.h
//  GIHViewController
//
//  Created by 徐强 on 2018/4/27.
//  Copyright © 2018年 gaizhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (GIHViewController)

/**
 *
 * return the top view controller
 *
 * such as window.rootViewController.focusViewController to get top vc of current window
 *
 * current is has a modal, then return modal's focusViewController
 * current is a tab controller, then return tab's seletedViewController.focusViewController
 * current is a nav controller, then return tab's topViewController.focusViewController
 * else return current controller
 *
 */
@property(nullable, nonatomic, readonly, strong) UIViewController *focusViewController;

@end

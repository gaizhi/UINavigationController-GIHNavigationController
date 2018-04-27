//
//  ViewController.m
//  GIHViewControllerDemo
//
//  Created by 徐强 on 2018/4/27.
//  Copyright © 2018年 gaizhi. All rights reserved.
//

#import "ViewController.h"

#import "UIViewController+GIHViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *logLabel;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    self.closeButton.hidden = ! self.presentingViewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPrintTabButtonClick:(id)sender {
    if (self.tabBarController) {
        UIViewController *vc = self.tabBarController.focusViewController;
        self.logLabel.text = [NSString stringWithFormat:@"%@ RESULT: %@", NSStringFromSelector(_cmd), vc.title];
    } else {
        return [self onPrintWindowButtonClick:nil];
    }
}
- (IBAction)onPrintNavButtonClick:(id)sender {
    if (self.navigationController) {
        UIViewController *vc = self.navigationController.focusViewController;
        self.logLabel.text = [NSString stringWithFormat:@"%@ RESULT: %@", NSStringFromSelector(_cmd), vc.title];
    } else {
        return [self onPrintWindowButtonClick:nil];
    }
}
- (IBAction)onPrintVCButtonClick:(id)sender {
    self.logLabel.text = [NSString stringWithFormat:@"%@ RESULT: %@", NSStringFromSelector(_cmd), self.title];
}
- (void)onPrintWindowButtonClick:(id)sender {
    self.logLabel.text = [NSString stringWithFormat:@"%@ RESULT: %@", NSStringFromSelector(_cmd), self.title];
}

- (IBAction)onPresentTabButtonClick:(id)sender {
    if (self.presentingViewController) {
        self.logLabel.text = @"You can't present vc while in modal";
        return;
    }

    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.title = @"modal vc";
    [self.tabBarController presentViewController:vc animated:YES completion:NULL];
}
- (IBAction)onPresentNavButtonClick:(id)sender {
    if (self.presentingViewController) {
        self.logLabel.text = @"You can't present vc while in modal";
        return;
    }

    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.title = @"modal vc";
    [self.tabBarController presentViewController:vc animated:YES completion:NULL];
}
- (IBAction)onPresentVCButtonClick:(id)sender {
    if (self.presentingViewController) {
        self.logLabel.text = @"You can't present vc while in modal";
        return;
    }

    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.title = @"modal vc";
    [self.tabBarController presentViewController:vc animated:YES completion:NULL];
}
- (IBAction)onCloseButtonClick:(id)sender {
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

@end

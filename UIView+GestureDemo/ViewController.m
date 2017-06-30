//
//  ViewController.m
//  UIView+GestureDemo
//
//  Created by CoderYinQiang on 2017/7/1.
//  Copyright © 2017年 CoderYinQiang. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Gesture.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.imageView.tapAction = ^(UITapGestureRecognizer *tap) {
        NSLog(@"tap");
    };
    
    self.imageView.swipeUpAction = ^(UISwipeGestureRecognizer *swipe) {
        NSLog(@"swipeUpAction");
    };
    
    self.imageView.swipeDownAction = ^(UISwipeGestureRecognizer *swipe) {
        NSLog(@"swipeDownAction");
    };
    
    self.imageView.swipeLeftAction = ^(UISwipeGestureRecognizer *swipe) {
        NSLog(@"swipeLeftAction");
    };
    
    self.imageView.swipeRightAction = ^(UISwipeGestureRecognizer *swipe) {
        NSLog(@"swipeRightAction");
    };
}



@end

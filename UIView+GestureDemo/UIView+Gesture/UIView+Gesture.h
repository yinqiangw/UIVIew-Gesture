//
//  UIView+Gesture.h
//  Test
//
//  Created by CoderYinQiang on 2017/6/30.
//  Copyright © 2017年 CoderYinQiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Gesture)

@property(nonatomic, copy) void(^tapAction)(UITapGestureRecognizer *tap);
@property(nonatomic, copy) void(^swipeLeftAction)(UISwipeGestureRecognizer *swipeLeft);
@property(nonatomic, copy) void(^swipeRightAction)(UISwipeGestureRecognizer *swipeRight);
@property(nonatomic, copy) void(^swipeUpAction)(UISwipeGestureRecognizer *swipeUp);
@property(nonatomic, copy) void(^swipeDownAction)(UISwipeGestureRecognizer *swipeDown);


@end

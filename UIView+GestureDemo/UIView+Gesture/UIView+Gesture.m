//
//  UIView+Gesture.m
//  Test
//
//  Created by CoderYinQiang on 2017/6/30.
//  Copyright © 2017年 CoderYinQiang. All rights reserved.
//

#import "UIView+Gesture.h"
#import <objc/runtime.h>

@implementation UIView (Gesture)

static char tapActionChar;
static char tapGestureChar;

static char swipeLeftActionChar;
static char swipeLeftGestureChar;

static char swipeRightActionChar;
static char swipeRightGestureChar;

static char swipeUpActionChar;
static char swipeUpGestureChar;

static char swipeDownActionChar;
static char swipeDownGestureChar;

@dynamic tapAction;
@dynamic swipeLeftAction, swipeRightAction, swipeDownAction, swipeUpAction;


-(void)setTapAction:(void (^)(UITapGestureRecognizer *))tapAction{
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &tapGestureChar);
    
    if(!gesture){
        gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClick:)];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &tapGestureChar, gesture, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    objc_setAssociatedObject(self, &tapActionChar, tapAction, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}




-(void(^)(UITapGestureRecognizer*))tapAction{
    void(^action)(UITapGestureRecognizer *) = objc_getAssociatedObject(self, &tapActionChar);
    if(!action){
        action=nil;
        objc_setAssociatedObject(self, &tapActionChar, action, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return action;
}

-(void)tapClick:(UITapGestureRecognizer *)gesture{
    if(self.tapAction){
        self.tapAction(gesture);
    }
}



-(void)setSwipeLeftAction:(void (^)(UISwipeGestureRecognizer *))swipeLeftAction{
    self.userInteractionEnabled = YES;
    UISwipeGestureRecognizer *gesture=objc_getAssociatedObject(self, &swipeLeftGestureChar);
    if(!gesture){
        gesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeLeft:)];
        [gesture setDirection:UISwipeGestureRecognizerDirectionLeft];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &swipeLeftGestureChar, gesture, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    objc_setAssociatedObject(self, &swipeLeftActionChar, swipeLeftAction, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}



-(void(^)(UISwipeGestureRecognizer *))swipeLeftAction{
    void(^action)(UISwipeGestureRecognizer *)=objc_getAssociatedObject(self, &swipeLeftActionChar);
    if(!action){
        action=nil;
        objc_setAssociatedObject(self, &swipeLeftActionChar, action, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return action;
}





-(void)swipeLeft:(UISwipeGestureRecognizer *)gesture{
    if(self.swipeLeftAction){
        self.swipeLeftAction(gesture);
    }
}




-(void)setSwipeRightAction:(void (^)(UISwipeGestureRecognizer *))swipeRightAction{
    self.userInteractionEnabled = YES;
    UISwipeGestureRecognizer*gesture=objc_getAssociatedObject(self, &swipeRightGestureChar);
    if(!gesture){
        gesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeRight:)];
        [gesture setDirection:UISwipeGestureRecognizerDirectionRight];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &swipeRightGestureChar, gesture, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    objc_setAssociatedObject(self, &swipeRightActionChar, swipeRightAction, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void(^)(UISwipeGestureRecognizer *))swipeRightAction{
    void(^action)(UISwipeGestureRecognizer *)=objc_getAssociatedObject(self, &swipeRightActionChar);
    if(!action){
        action=nil;
        objc_setAssociatedObject(self, &swipeRightActionChar, action, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return action;
}

-(void)swipeRight:(UISwipeGestureRecognizer *)gesture{
    if(self.swipeRightAction){
        self.swipeRightAction(gesture);
    }
}


-(void)setSwipeUpAction:(void (^)(UISwipeGestureRecognizer *))swipeUpAction{
    self.userInteractionEnabled = YES;
    UISwipeGestureRecognizer *gesture=objc_getAssociatedObject(self, &swipeUpGestureChar);
    if(!gesture){
        gesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeUp:)];
        [gesture setDirection:UISwipeGestureRecognizerDirectionUp];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &swipeUpGestureChar, gesture, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    objc_setAssociatedObject(self, &swipeUpActionChar, swipeUpAction, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(void(^)(UISwipeGestureRecognizer*))swipeUpAction{
    void(^action)(UISwipeGestureRecognizer*) = objc_getAssociatedObject(self, &swipeUpActionChar);
    if(!action){
        action=nil;
        objc_setAssociatedObject(self, &swipeUpActionChar, action, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return action;
}


-(void)swipeUp:(UISwipeGestureRecognizer *)gesture{
    if(self.swipeUpAction){
        self.swipeUpAction(gesture);
    }
}




-(void)setSwipeDownAction:(void (^)(UISwipeGestureRecognizer *))swipeDownAction{
    self.userInteractionEnabled = YES;
    UISwipeGestureRecognizer*gesture=objc_getAssociatedObject(self, &swipeDownGestureChar);
    if(!gesture){
        gesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeDown:)];
        [gesture setDirection:UISwipeGestureRecognizerDirectionDown];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &swipeDownGestureChar, gesture, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    objc_setAssociatedObject(self, &swipeDownActionChar, swipeDownAction, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void(^)(UISwipeGestureRecognizer *))swipeDownAction{
    void(^action)(UISwipeGestureRecognizer *)=objc_getAssociatedObject(self, &swipeDownActionChar);
    if(!action){
        action=nil;
        objc_setAssociatedObject(self, &swipeDownActionChar, action, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return action;
}

-(void)swipeDown:(UISwipeGestureRecognizer *)gesture{
    if(self.swipeDownAction){
        self.swipeDownAction(gesture);
    }
}

@end

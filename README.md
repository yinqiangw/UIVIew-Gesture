# UIVIew-Gesture
快速给 UI 控件添加手势并监听

###用法
把 UIView+Gesture 拖拽到项目中, block中完成对控件的监听

```objc
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
```

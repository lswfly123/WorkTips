//
//  CodeButton.m
//  WYSDK
//
//  Created by 51pgzs on 2018/10/24.
//  Copyright © 2018年 xuehuaqi. All rights reserved.
//

#import "CodeButton.h"
#import <objc/runtime.h>
@implementation CodeButton
// 发送验证码按钮是否可以点击
- (void)setIsEnabled:(BOOL)isEnabled{
    
    _isEnabled = isEnabled;
    if (isEnabled) {
        // 可点击
        self.enabled=YES;
    }else{
        // 不可点击
        self.enabled=NO;
    }
    self.backgroundColor = kMainWhiteColor;
    [self setTitleColor:kMainGreenColor forState:UIControlStateNormal];
    [self setCornerRadius:3.0];
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = kMainGreenColor.CGColor;
}

- (void)startTime:(NSInteger)timeout title:(NSString *)title waitTitle:(NSString *)waitTitle{
    
    __block NSInteger timeOut = timeout;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    // 设置定时器，每秒计时一次
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1ull*NSEC_PER_SEC,0);
    dispatch_source_set_event_handler(_timer, ^{
       
        if (timeOut<=0) {// 倒计时结束
            
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
               
                // 设置界面的按钮显示
                [self setTitle:title forState:UIControlStateNormal];
                [self setTitleColor:kMainGreenColor forState:UIControlStateNormal];
                self.backgroundColor = kMainWhiteColor;
                // 一开始属性设置的固定值
                self.isEnabled = YES;
            });
        }else{
            
            int seconds = timeOut % 60;
            NSString *strTime = [NSString stringWithFormat:@"%.2d",seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
               
                self.titleLabel.text = [NSString stringWithFormat:@"%@%@",waitTitle,strTime];
                [self setTitle:[NSString stringWithFormat:@"%@%@",waitTitle,strTime] forState:UIControlStateNormal];
                [self setTitleColor:kMainGreenColor forState:UIControlStateNormal];
                self.backgroundColor = kMainWhiteColor;
                self.isEnabled = NO;
            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
}
@end

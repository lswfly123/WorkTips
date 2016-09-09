//
//  AppDelegate.h
//  PasswordView
//
//  Created by DQaemoney on 16/9/8.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
// 存放 是否要显示支付密码框
@property(nonatomic,assign) BOOL isShowPassView;
@property (strong, nonatomic) UIWindow *window;


@end


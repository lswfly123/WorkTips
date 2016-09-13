//
//  ViewController.m
//  PasswordView
//
//  Created by DQaemoney on 16/9/8.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import "ViewController.h"
#import "PasswordView.h"
#import "AppDelegate.h"
@interface ViewController ()<UITextFieldDelegate,PayPasswordViewDelegate>
@property (nonatomic ,strong) PasswordView *payPassWordView;
@property (nonatomic ,strong) UITextField *textF;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 输入金额框
    UITextField *textF = [[UITextField alloc]initWithFrame:CGRectMake(80, 100, ScreenWIDTH - 160, 50)];
    textF.keyboardType = UIKeyboardTypeNumberPad;
    textF.layer.borderWidth = 2.0f;
    textF.layer.borderColor = [UIColor grayColor].CGColor;
    textF.layer.cornerRadius = 4.0f;
    self.textF = textF;
    self.textF.delegate = self;
    [self.view addSubview:textF];
    // 体现按钮
    UIButton *withdrawBtn = [[UIButton alloc]initWithFrame:CGRectMake(80, 200, self.view.frame.size.width - 160, 50)];
    withdrawBtn.backgroundColor = [UIColor orangeColor];
    [withdrawBtn setTitle:@"提现" forState:UIControlStateNormal];
    withdrawBtn.tintColor = [UIColor whiteColor];
    withdrawBtn.titleLabel.textColor = [UIColor whiteColor];
    [withdrawBtn addTarget:self action:@selector(withdrawMoney) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:withdrawBtn];
}

- (void)withdrawMoney{

    [self.textF resignFirstResponder];
    // 遮盖
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    self.payPassWordView = [[PasswordView alloc] initWithFrame:CGRectMake(0, ScreenHEIGHT, ScreenWIDTH, 150 * kHeightFromIphone6)];
    
    // 弹出框
    self.textF.text = nil;
    self.payPassWordView.tf.keyboardType = UIKeyboardTypeNumberPad;
    self.payPassWordView.delegate = self;
    self.payPassWordView.superVC = self;
    self.payPassWordView.backgroundColor = UIColorFromRGB(0xf3f4f5);
    
    // 弹出键盘
    self.payPassWordView.tf.keyboardType = UIKeyboardTypeNumberPad;
    [tempAppDelegate.window addSubview:self.payPassWordView];
    [self.textF becomeFirstResponder];
    
    [UIView animateWithDuration:0.2
                     animations:^{
                         self.payPassWordView.frame =
                         CGRectMake(0, ScreenHEIGHT - ( 150 + 216 ) * kHeightFromIphone6 - 64, ScreenWIDTH, ScreenHEIGHT);
                     }];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    NSString *tobeString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    [self.payPassWordView setBlackPoint:tobeString.length];
    NSLog(@"%@",tobeString);
    NSLog(@"%@",textField.text);
    if (tobeString.length > 2) {
        return NO;
    }else{
    
       return YES;
    }
    
 
    
}
@end

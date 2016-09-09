//
//  PasswordView.m
//  PasswordView
//
//  Created by DQaemoney on 16/9/8.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import "PasswordView.h"
#import "AppDelegate.h"
#define ScreenWIDTH [UIScreen mainScreen].bounds.size.width
#define ScreenHEIGHT [UIScreen mainScreen].bounds.size.height
#define kRatioFromIphone6        (ScreenWIDTH/375)
#define kHeightFromIphone6       (ScreenHEIGHT/667)
#define Font_15 [UIFont systemFontOfSize:15]
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define UIColorFromRGB(rgbValue)    [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@implementation PasswordView
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView{
    // Drawing code
    
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    UIView *coverViewOnWindow = [[UIView alloc]init];
    self.coverViewOnWindow = coverViewOnWindow;
    self.coverViewOnWindow.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.6];
    self.coverViewOnWindow.frame = CGRectMake(0, 0, ScreenWIDTH , ScreenHEIGHT);
    [window addSubview:self.coverViewOnWindow];
    
    UILabel * titleLab = UILabel.new;
    titleLab.frame = CGRectMake(0, 0, ScreenWIDTH, 40);
    titleLab.textAlignment = NSTextAlignmentCenter;
    titleLab.text = @"交易密码";
    titleLab.font = Font_15;
    [self addSubview:titleLab];
    
    
    self.closeBackBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 40)];
    [self.closeBackBtn addTarget:self action:@selector(closeView) forControlEvents:UIControlEventTouchUpInside];
    
    self.closeBtn = [self getNavigationBarButtonByWidth:21 Height:12 imageNameStr:@"down" action:@selector(closeView) target:self];
    self.closeBtn.center = CGPointMake(20, 20);
    [self.closeBackBtn addSubview:self.closeBtn];
    
    [self addSubview:self.closeBackBtn];
    
    //支付密码下的横线
    UIView * view = UIView.new;
    view.frame = CGRectMake(0, 40, ScreenWIDTH, 1);
    view.backgroundColor = UIColorFromRGB(0xcacaca);
    [self addSubview:view];
    
    //密码框
    _rectLab = [[UILabel alloc]init];
    _rectLab.frame = CGRectMake(12, 70, ScreenWIDTH-24, 45);
    _rectLab.textAlignment = NSTextAlignmentCenter;
    _rectLab.font = Font_15;
    [self addSubview:_rectLab];
    
    for (int i=0; i<6; i++)
    {
        
        UILabel * textLab = [[UILabel alloc]init];
        textLab.frame = CGRectMake((45 + 14) * kRatioFromIphone6 * i, 0, 45 * kRatioFromIphone6, 45 * kRatioFromIphone6);
        textLab.backgroundColor = RGBA(241, 241, 244,1);
        textLab.layer.borderColor = UIColorFromRGB(0xc7c7cd).CGColor;
        textLab.layer.borderWidth = 0.5;
        textLab.textAlignment = NSTextAlignmentCenter;
        textLab.font = Font_15;
        textLab.tag = 100+i;
        textLab.textColor = UIColorFromRGB(0x252525);
        textLab.userInteractionEnabled = YES;
        [textLab addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showTextTiled)]];
        [_rectLab addSubview:textLab];
    }
    
    UIButton * forgetBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    forgetBtn.frame = CGRectMake(ScreenWIDTH-100-12, CGRectGetMaxY(_rectLab.frame) + 20 * kHeightFromIphone6, 100, 20);
    [forgetBtn setTitle:@"忘记交易密码?" forState:UIControlStateNormal];
    forgetBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    forgetBtn.titleLabel.textAlignment = NSTextAlignmentRight ;
    [forgetBtn setTitleColor:UIColorFromRGB(0x77b2ff) forState:UIControlStateNormal];
    [forgetBtn addTarget:self action:@selector(forgetPasswordMethod) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:forgetBtn];
}

- (void)showTextTiled {
    
    if (self.showTf) {
        self.showTf();
    }
    [self.tf becomeFirstResponder];
}
-(void)setBlackPoint:(NSInteger)length
{
    // 输入密码
    for (int i=0; i<length; i++)
    {
        UILabel * lab = (UILabel *)[_rectLab viewWithTag:100+i];
        
        lab.text = @"●";
    }
    
    // 删除密码
    for (NSInteger i=5; i>length-1; i--)
    {
        UILabel * lab = (UILabel *)[_rectLab viewWithTag:100+i];
        lab.text = @"";
    }
}

-(void)closeView
{
    
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    tempAppDelegate.isShowPassView = NO;
    [self.tf resignFirstResponder];
    
    self.tf.text = @"";
    [self.coverViewOnSuperVC removeFromSuperview];
    [self.coverViewOnWindow removeFromSuperview];
    [UIView animateWithDuration:0.2 animations:^{
        self.frame = CGRectMake(0, ScreenHEIGHT, ScreenWIDTH, 150 * kHeightFromIphone6);
    } completion:^(BOOL finish){
        if (finish)
        {
            [self removeFromSuperview];
        }
    }];
}
//忘记交易密码
-(void)forgetPasswordMethod
{
    [self.coverViewOnWindow removeFromSuperview];
    [self closeView];
    
    if ([self.delegate respondsToSelector:@selector(jmpToChangeViewController)]) {
        
        [self.delegate jmpToChangeViewController];
    }
}

-(UIButton *)getNavigationBarButtonByWidth:(float)width Height:(float)height imageNameStr:(NSString *)imageNameStr action:(SEL)action target:(id)target
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, width, height);
    [btn setBackgroundImage:[UIImage imageNamed:imageNameStr] forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}



@end

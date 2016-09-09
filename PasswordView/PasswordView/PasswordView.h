//
//  PasswordView.h
//  PasswordView
//
//  Created by DQaemoney on 16/9/8.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PayPasswordViewDelegate <NSObject>

- (void)jmpToChangeViewController;
@end
@interface PasswordView : UIView
@property (nonatomic ,strong) UIViewController * superVC;
@property (nonatomic, strong) UINavigationController * navi;
@property (nonatomic, strong) UITextField * tf;
@property (nonatomic, strong) UILabel * rectLab;
@property (nonatomic, strong) UIView* coverViewOnWindow;
@property (nonatomic, strong) UIView* coverViewOnSuperVC;
@property (nonatomic, strong) UIButton *closeBackBtn;
@property (nonatomic, strong) UIButton * closeBtn ;

@property (nonatomic,strong)void (^showTf)();

@property (nonatomic, weak) id<PayPasswordViewDelegate>delegate;

-(void)setBlackPoint:(NSInteger)length;
-(void)closeView;
@end

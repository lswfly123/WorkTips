//
//  ViewController.m
//  LSWPullDownMenu
//
//  Created by DQaemoney on 16/9/12.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import "ViewController.h"
#import "CoverView.h"
#import "LSWTitleView.h"
#import "AllCourseVc.h"
@interface ViewController ()

@property (nonatomic ,strong) NSMutableArray *menuButtonsArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    LSWTitleView *titleView = [[LSWTitleView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.height, self.view.frame.size.height)];
    [self.view addSubview:titleView];
//    __weak typeof(self) weakSelf = self;
//    _coverView.clickCoverView = ^{
//    
//        [weakSelf dismissCoverView];
//    };
}
- (void)setupAllChildVc{

    AllCourseVc *allVc = [[AllCourseVc alloc]init];
    [self addChildViewController:allVc];
}
//- (void)dismissCoverView{
//
//    // 移除蒙版
//    self.coverView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
//    
//    [UIView animateWithDuration:0.25 animations:^{
//        
//        self.coverView.frame = CGRectMake(0, 0, self.view.frame.size.width, 20);
//        self.coverView.backgroundColor = [UIColor grayColor];
////        CGRect frame = self.contentView.frame;
////        frame.size.height = 0;
////        self.contentView.frame = frame;
//        
//    } completion:^(BOOL finished) {
//        self.coverView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height * 0.8);
//        self.coverView.backgroundColor = [UIColor grayColor];
////        self.coverView.hidden = YES;
////        
////        self.coverView.backgroundColor = _coverColor;
//        
//    }];
//}


@end

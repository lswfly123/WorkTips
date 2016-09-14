//
//  LSWTitleView.m
//  LSWPullDownMenu
//
//  Created by DQaemoney on 16/9/13.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import "CoverView.h"
#import "LSWTitleView.h"
#define ScreenWIDTH [UIScreen mainScreen].bounds.size.width
#define ScreenHEIGHT [UIScreen mainScreen].bounds.size.height
@interface LSWTitleView ()
@property(nonatomic, strong) CoverView *coverView;
@property(nonatomic, strong) UIColor *coverColor;
@property(nonatomic, strong) UIButton *menuButton;
@property(nonatomic, strong) NSMutableArray *menuButtonArray;
@property(nonatomic, strong) NSMutableArray *titlesArray;

// 放置下拉菜单的view
@property(nonatomic, strong) UIView *contentView;
@end
@implementation LSWTitleView

// 懒加载contentView
- (UIView *)contentView {

  if (!_contentView) {
    _contentView = [[UIView alloc]
        initWithFrame:CGRectMake(0, 0, ScreenWIDTH, ScreenHEIGHT)];
    //_contentView.backgroundColor = [UIColor grayColor];
    _contentView.clipsToBounds = YES;
    [self.coverView addSubview:_contentView];
  }
  return _contentView;
}
- (NSMutableArray *)titlesArray {

  if (!_titlesArray) {
    _titlesArray = [[NSMutableArray alloc]
        initWithObjects:@"小学", @"排序", @"更多", nil];
  }
  return _titlesArray;
}
- (UIColor *)coverColor {

  if (!_coverColor) {
    _coverColor = [UIColor colorWithRed:221 / 255.0
                                  green:221 / 255.0
                                   blue:221 / 255.0
                                  alpha:.7];
  }
  return _coverColor;
}
- (CoverView *)coverView {
  if (!_coverView) {
    // 设置蒙版的frame
    CGFloat coverX = 0;
    CGFloat coverY = CGRectGetMaxY(self.frame);
    CGFloat coverW = self.frame.size.width;
    CGFloat coverH = self.superview.bounds.size.height - coverY;
    _coverView = [[CoverView alloc]
        initWithFrame:CGRectMake(coverX, coverY, coverW, coverH)];
    // _coverView.backgroundColor = _coverColor;
    _coverView.backgroundColor = [UIColor darkGrayColor];
    [self.superview addSubview:_coverView];
  }
  return _coverView;
}
- (NSMutableArray *)menuButtonArray {

  if (!_menuButtonArray) {
    _menuButtonArray = [[NSMutableArray alloc] init];
  }
  return _menuButtonArray;
}

// 进入界面立即初始化
- (instancetype)initWithFrame:(CGRect)frame {

  self = [super initWithFrame:frame];
  [self addSubview:self.coverView];
  if (self) {
    for (int i = 0; i < 3; i++) {
      UIButton *menuButton = [[UIButton alloc] init];
      menuButton.tag = i;
      // self.menuButton = menuButton;
      [self.menuButtonArray addObject:menuButton];
      [self addSubview:menuButton];
    }
  }

  return self;
}
- (void)layoutSubviews {

  [super layoutSubviews];
  for (int i = 0; i < 3; i++) {

    UIButton *menuButton = self.menuButtonArray[i];

    menuButton.frame = CGRectMake(ScreenWIDTH / 3 * i, 24, ScreenWIDTH / 3, 50);
    [menuButton setTitle:self.titlesArray[i] forState:UIControlStateNormal];
    [menuButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 30)];
    [menuButton setImageEdgeInsets:UIEdgeInsetsMake(0, 50, 0, -20)];
    [menuButton setImage:[UIImage imageNamed:@"标签-向下箭头"]
                forState:UIControlStateNormal];
    //[menuButton setImage:[UIImage imageNamed:@"标签-向上箭头"]
    // forState:UIControlStateSelected];
    [menuButton setImage:[UIImage imageNamed:@"标签-向上箭头"]
                forState:UIControlStateSelected];
    [menuButton addTarget:self
                   action:@selector(menuClicked:)
         forControlEvents:UIControlEventTouchUpInside];

    // menuButton.backgroundColor = [self createRandomColor];
    [self addSubview:menuButton];
  }
}

// 头部按钮点击事件
- (void)menuClicked:(UIButton *)titleBtn {
    
   titleBtn.selected = !titleBtn.selected;
    for (int i = 0; i < 3; i++) {
        if (titleBtn.tag != i) {
            UIButton *btn = self.menuButtonArray[i];
            btn.selected = NO;
        }
    }
  //    if (titleBtn.tag == 0) {
  //        titleBtn.selected = !titleBtn.selected;
  //        [titleBtn setImage:[UIImage imageNamed:@"标签-向上箭头"]
  //        forState:UIControlStateSelected];
  //    }else if (titleBtn.tag == 1){
  //        titleBtn.selected = !titleBtn.selected;
  //        [titleBtn setImage:[UIImage imageNamed:@"标签-向上箭头"]
  //        forState:UIControlStateSelected];
  //    }else{
  //        titleBtn.selected = !titleBtn.selected;
  //        [titleBtn setImage:[UIImage imageNamed:@"标签-向上箭头"]
  //        forState:UIControlStateSelected];
  //    }
}

- (UIColor *)createRandomColor {

  int R = (arc4random() % 256);
  int G = (arc4random() % 256);
  int B = (arc4random() % 256);
  UIColor *randomColor =
      [UIColor colorWithRed:R / 255.0 green:G / 255.0 blue:B / 255.0 alpha:1];
  return randomColor;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

  [self layoutSubviews];
}
- (void)setHighlighted:(BOOL)highlighted {
}
@end

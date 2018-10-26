//
//  CodeButton.h
//  WYSDK
//
//  Created by 51pgzs on 2018/10/24.
//  Copyright © 2018年 xuehuaqi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CodeButton : UIButton

@property (nonatomic, assign) BOOL isEnabled;
- (void)startTime:(NSInteger)timeout title:(NSString *)title waitTitle:(NSString *)waitTitle;
@end

NS_ASSUME_NONNULL_END

//
//  CoverView.m
//  LSWPullDownMenu
//
//  Created by DQaemoney on 16/9/13.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import "CoverView.h"

@implementation CoverView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (_clickCoverView) {
        /**
         *  回调block
         */
        _clickCoverView();
    }
}

@end

//
//  ShapeLayer.h
//  ShapLayerTest
//
//  Created by DQaemoney on 16/9/2.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShapeLayer : UIView{

    CAShapeLayer *_trackLayer;
    UIBezierPath *_trackPath;
    CAShapeLayer *_progressLayer;
    UIBezierPath *_progressPath;
}

@property (nonatomic ,strong) UIColor *trackColor;
@property (nonatomic ,strong) UIColor *progressColor;
@property (nonatomic ,assign) CGFloat progress;
@property (nonatomic ,assign) CGFloat progressWidth;

- (void)setProgress:(CGFloat)progress animated:(BOOL)animated;
@end

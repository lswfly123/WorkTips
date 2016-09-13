//
//  ShapeLayer.m
//  ShapLayerTest
//
//  Created by DQaemoney on 16/9/2.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import "ShapeLayer.h"

@implementation ShapeLayer

- (id)initWithFrame:(CGRect)frame{

    self.layer.backgroundColor = [UIColor blueColor].CGColor;
    self = [super initWithFrame:frame];
    if (self) {
        _trackLayer = [CAShapeLayer new];
        [self.layer addSublayer:_trackLayer];
        _trackLayer.fillColor = nil;
        _trackLayer.frame = self.bounds;
        
        _progressLayer = [CAShapeLayer new];
        [self.layer addSublayer:_progressLayer];
        _progressLayer.fillColor = nil;
        _progressLayer.frame = self.bounds;
        _progressLayer.lineCap = kCALineCapRound;
        
        // 设置默认线宽
        _progressLayer.lineWidth = 5;
    }
    
    return self;
}
- (void)setTrack{

    _trackPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x-self.frame.origin.x, self.center.y-self.frame.origin.y) radius:(self.bounds.size.width - _progressWidth)*0.5 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    _trackLayer.path = _trackPath.CGPath;
}

- (void)setProgress{

    _progressPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x-self.frame.origin.x, self.center.y-self.frame.origin.y) radius:(self.bounds.size.width - _progressWidth)*0.5 startAngle:- M_PI_2 endAngle:(2 * M_PI - M_PI_2)*_progress clockwise:YES];
    _progressLayer.path = _progressPath.CGPath;
}


- (void)setTrackColor:(UIColor *)trackColor{
    
    _trackLayer.strokeColor = trackColor.CGColor;
}
- (void)setProgress:(CGFloat)progress{

    _progress = progress;
    [self setProgress];
}

- (void)setProgressColor:(UIColor *)progressColor{

    _progressLayer.strokeColor = progressColor.CGColor;
}

- (void)setProgressWidth:(CGFloat)progressWidth{

    _progressWidth = progressWidth;
    _trackLayer.lineWidth = _progressWidth;
    _progressLayer.lineWidth = _progressWidth;
    
    [self setTrack];
    [self setProgress];
}
@end

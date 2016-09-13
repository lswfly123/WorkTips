//
//  ViewController.m
//  ShapLayerTest
//
//  Created by DQaemoney on 16/9/2.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import "ViewController.h"
#import "ShapeLayer.h"
@interface ViewController ()
@property (nonatomic ,assign) CGFloat progressed;
@property (nonatomic ,weak) ShapeLayer *shapLayer;
@property (nonatomic ,weak) NSTimer *timer;
@property (nonatomic ,strong) CADisplayLink *displayLink;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.progressed = 0;
    ShapeLayer *shapLayer = [[ShapeLayer alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 150)*0.5, 100, 150 , 150)];
    self.shapLayer = shapLayer;
    [self.view addSubview:shapLayer];
    shapLayer.progressColor = [UIColor orangeColor];
    shapLayer.trackColor = [UIColor grayColor];
    
//    NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
//    [[NSRunLoop mainRunLoop] addTimer:timer forMode: NSRunLoopCommonModes];
//    self.timer = timer;
    CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(timerAction)];
    self.displayLink = displayLink;
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    
    
    shapLayer.progressWidth = 5;
}

- (void)timerAction{

    self.progressed = self.progressed + 0.001;
    self.shapLayer.progress = self.progressed;
}

- (void)dealloc{

    //[self.timer invalidate];
}
@end

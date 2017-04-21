//
//  BKCAShapeLayerViewController.m
//  Bricks
//
//  Created by heke on 2017/4/21.
//  Copyright © 2017年 BK. All rights reserved.
//

#import "BKCAShapeLayerViewController.h"

@interface BKCAShapeLayerViewController ()

@property (nonatomic, strong) UIScrollView *contentScrollView;

@end

@implementation BKCAShapeLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"CAShapeLayer";
    [self addContentView];
    [self addContent1];
}

- (void)addContentView {
    self.automaticallyAdjustsScrollViewInsets = NO;
    CGRect rt = [UIScreen mainScreen].bounds;
    rt.origin.y = 64;
    rt.size.height -= 64;
    self.contentScrollView = [[UIScrollView alloc] initWithFrame:rt];
    self.contentScrollView.contentSize = CGSizeMake(rt.size.width, rt.size.height * 2);
    self.contentScrollView.pagingEnabled = YES;
    [self.view addSubview:self.contentScrollView];
}

- (void)addContent1 {
    UIImageView *image = [[UIImageView alloc] initWithFrame:self.contentScrollView.bounds];
    image.image = [UIImage imageNamed:@"bizhi"];
    [self.contentScrollView addSubview:image];
    
    CAShapeLayer *fillLayer = [[CAShapeLayer alloc] init];
    fillLayer.frame = image.bounds;
    UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 200, 200)];
    UIBezierPath *fillPath = [UIBezierPath bezierPathWithRect:image.bounds];
    [fillPath appendPath:ovalPath];
    
    UIBezierPath *ovalPath1 = [UIBezierPath bezierPathWithRect:CGRectMake(50, 270, 200, 200)];
    [fillPath appendPath:ovalPath1];
    
    fillLayer.path = fillPath.CGPath;
    
    fillLayer.fillRule = kCAFillRuleEvenOdd;
    fillLayer.fillColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5].CGColor;
    fillLayer.opacity = 1;
    [image.layer addSublayer:fillLayer];
    
}


@end

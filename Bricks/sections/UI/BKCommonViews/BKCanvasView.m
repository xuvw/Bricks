//
//  BKCanvasView.m
//  Bricks
//
//  Created by heke on 2017/4/11.
//  Copyright © 2017年 BK. All rights reserved.
//

#import "BKCanvasView.h"

@interface BKCanvasView ()

@property (nonatomic, strong) CAShapeLayer *dashLine;

@end

@implementation BKCanvasView

- (void)layoutSubviews {
    if (self.dashLine) {
        [self.dashLine removeFromSuperlayer];
        self.dashLine = nil;
    }
    if (self.dashLineColor == nil) {
        self.dashLineColor = [UIColor whiteColor];
    }
    [super layoutSubviews];
    CGRect rt = self.bounds;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:rt];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeColor = self.dashLineColor.CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.lineWidth = 1;
    shapeLayer.lineJoin = kCALineJoinMiter;
    shapeLayer.lineCap = kCALineCapSquare;
    shapeLayer.path = path.CGPath;
    shapeLayer.lineDashPattern = @[@4, @8];
    
    [self.layer addSublayer:shapeLayer];
    self.dashLine = shapeLayer;
}

@end

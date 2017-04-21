//
//  BKGradientView.m
//  Bricks
//
//  Created by heke on 2017/3/15.
//  Copyright © 2017年 BK All rights reserved.
//

#import "BKGradientView.h"

@interface BKGradientView ()

@property (nonatomic, strong) CAGradientLayer *gradientLayer;

@end

@implementation BKGradientView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.gradientColor = [UIColor whiteColor];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.gradientColor = [UIColor whiteColor];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (self.gradientLayer) {
        return;
    }
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.bounds;
    gradientLayer.colors = @[(id)[self.gradientColor colorWithAlphaComponent:0.7].CGColor,
                             (id)[self.gradientColor colorWithAlphaComponent:1].CGColor];
    gradientLayer.locations = @[@(0.0f)];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);
    
    [self.layer addSublayer:gradientLayer];
    self.gradientLayer = gradientLayer;
}

@end

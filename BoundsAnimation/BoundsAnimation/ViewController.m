//
//  ViewController.m
//  BoundsAnimation
//
//  Created by Kim Kwangmin on 2/2/15.
//  Copyright (c) 2015 Kim Kwangmin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *tempView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    tempView.backgroundColor = [UIColor redColor];
    [self.view addSubview:tempView];
    
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    bounceAnimation.values = @[@0.5F, @1.4F, @0.8F, @1.0F];
    bounceAnimation.duration = 5;
    bounceAnimation.removedOnCompletion = NO;
    bounceAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    bounceAnimation.autoreverses = YES;
    bounceAnimation.delegate = self;
    
    [tempView.layer addAnimation:bounceAnimation forKey:@"bounce"];
}


- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)finished
{
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    // Do nothing yet.
}

@end

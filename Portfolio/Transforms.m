//
//  Transforms.m
//  Portfolio
//
//  Created by Austin Stapley on 5/18/14.
//  Copyright (c) 2014 Stapley Development. All rights reserved.
//

#import "Transforms.h"

@interface Transforms ()

@end

@implementation Transforms

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationItem setTitle:@"Transforms"];
}

- (void)viewDidLoad
{
    CABasicAnimation* scaleAnim = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnim.fromValue = [NSNumber numberWithFloat:1.0];
    scaleAnim.toValue = [NSNumber numberWithFloat:0.6];
    scaleAnim.duration = 1.0;
    scaleAnim.autoreverses = YES;
    scaleAnim.repeatCount = HUGE_VALF;
    
    CABasicAnimation* rotateAnim = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotateAnim.fromValue = [NSNumber numberWithFloat:0];
    rotateAnim.toValue = [NSNumber numberWithFloat:M_PI*2];
    rotateAnim.duration = 2.0;
    rotateAnim.autoreverses = NO;
    rotateAnim.repeatCount = HUGE_VALF;
    
    CGMutablePathRef thePath = CGPathCreateMutable();
    CGPathMoveToPoint(thePath,NULL,50.0,284.0);
    CGPathAddCurveToPoint(thePath,NULL,50.0,484.0,
                          270.0,484.0,
                          270.0,270.0);
    CGPathAddCurveToPoint(thePath,NULL,270.0,84.0,
                          50.0,84.0,
                          50.0,284.0);
    
    CAKeyframeAnimation * theAnimation;
    theAnimation=[CAKeyframeAnimation animationWithKeyPath:@"position"];
    theAnimation.path=thePath;
    theAnimation.rotationMode = kCAAnimationRotateAuto;
    theAnimation.autoreverses = NO;
    theAnimation.repeatCount = HUGE_VALF;
    theAnimation.duration=3.0;
    
    [self.imageViewTurtle setCenter:CGPointMake(25.0, 25.0)];
    [self.imageViewTurtle.layer addAnimation:theAnimation forKey:@"position"];
    
    [self.imageViewCircle.layer addAnimation:rotateAnim forKey:@"transform.rotation"];
    [self.imageViewCircle.layer addAnimation:scaleAnim forKey:@"transform.scale"];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

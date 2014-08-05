//
//  motionEffects.m
//  Portfolio
//
//  Created by Austin Stapley on 5/22/14.
//  Copyright (c) 2014 Stapley Development. All rights reserved.
//

#import "motionEffects.h"

@interface motionEffects ()

@end

@implementation motionEffects

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationItem setTitle:@"Motion Effects"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat leftRightMin = -150.0f;
    CGFloat leftRightMax = 150.0f;
    
    CGFloat upDownMin = -150.0f;
    CGFloat upDownMax = 150.0f;
    
    UIInterpolatingMotionEffect *leftRight = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    
    UIInterpolatingMotionEffect *upDown = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    
    leftRight.minimumRelativeValue = @(leftRightMin);
    leftRight.maximumRelativeValue = @(leftRightMax);
    
    upDown.minimumRelativeValue = @(upDownMin);
    upDown.maximumRelativeValue = @(upDownMax);
    
    UIMotionEffectGroup *motionEffectGroup = [[UIMotionEffectGroup alloc] init];
    motionEffectGroup.motionEffects = [NSArray arrayWithObjects:leftRight, upDown, nil];
    
    [self.imageView addMotionEffect:motionEffectGroup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

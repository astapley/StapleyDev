//
//  Dynamics.h
//  Portfolio
//
//  Created by Austin Stapley on 5/24/14.
//  Copyright (c) 2014 Stapley Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Dynamics : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *turtleOne;
@property (strong, nonatomic) IBOutlet UIImageView *turtleTwo;
@property (strong, nonatomic) IBOutlet UIImageView *turtleThree;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIDynamicItemBehavior *dynamicItemBehavior;
@property (nonatomic, strong) UIGravityBehavior *gravity;
@property (nonatomic, strong) UICollisionBehavior *collision;

@end

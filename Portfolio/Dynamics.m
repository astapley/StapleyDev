//
//  Dynamics.m
//  Portfolio
//
//  Created by Austin Stapley on 5/24/14.
//  Copyright (c) 2014 Stapley Development. All rights reserved.
//

#import "Dynamics.h"

@interface Dynamics ()

@end

@implementation Dynamics

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.gravity = [[UIGravityBehavior alloc] initWithItems:@[self.turtleOne, self.turtleTwo, self.turtleThree]];
    self.collision = [[UICollisionBehavior alloc] initWithItems:@[self.turtleOne, self.turtleTwo, self.turtleThree]];
    self.collision.translatesReferenceBoundsIntoBoundary = YES;
    self.dynamicItemBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[self.turtleOne, self.turtleTwo, self.turtleThree]];
    [self.dynamicItemBehavior setElasticity:0.89f];
    
    [self.animator addBehavior:self.gravity];
    [self.animator addBehavior:self.collision];
    [self.animator addBehavior:self.dynamicItemBehavior];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

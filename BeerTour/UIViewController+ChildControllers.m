//
//  UIViewController+ChildControllers.m
//  Monitor
//
//  Created by Christopher Schneider on 1/30/14.
//  Copyright (c) 2014 Comverge. All rights reserved.
//

#import "UIViewController+ChildControllers.h"

@implementation UIViewController (ChildControllers)

- (void)attachChildViewController:(UIViewController*)child
{
  // Add the header
  [self addChildViewController:child];
  [self.view addSubview:child.view];
  [child didMoveToParentViewController:self];
}

@end

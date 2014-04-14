//
//  ListNavController.m
//  BeerTour
//
//  Created by Christopher Schneider on 4/9/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "ListNavController.h"

@interface ListNavController ()

@end

@implementation ListNavController {
  ListController *rootController;
}

- (id)init
{
  if (self = [super init]) {
    rootController = [ListController new];
    [self pushViewController:rootController animated:NO];
    
    self.tabBarItem = [self createTabBarItem];
  }
  return self;
}

- (void)viewDidLoad
{
  self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
  self.view.backgroundColor = [UIColor redColor];
  [super viewDidLoad];
}

- (UITabBarItem*)createTabBarItem {
  return [[UITabBarItem alloc] initWithTitle:@"List" image:[UIImage imageNamed:@"list"] selectedImage:[UIImage imageNamed:@"list"]];
}



@end

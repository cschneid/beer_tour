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
  self.view.translatesAutoresizingMaskIntoConstraints = NO;
  self.view.backgroundColor = [UIColor redColor];
  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
  [self.view pinToSuperviewEdges:JRTViewPinAllEdges inset:0];
}

- (UITabBarItem*)createTabBarItem {
  return [[UITabBarItem alloc] initWithTitle:@"List" image:[UIImage imageNamed:@"list"] selectedImage:[UIImage imageNamed:@"list"]];
}



@end

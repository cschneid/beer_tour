//
//  AppController.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "AppController.h"
#import "UIViewController+ChildControllers.h"

@interface AppController () <UITabBarControllerDelegate>

@end

@implementation AppController {
  UIViewController *listTab;
  UIViewController *mapTab;
}

- (id)init {
  if (self = [super init]) {
    listTab = [ListNavController new];
    mapTab  = [MapController new];
    
    self.viewControllers = @[
                              listTab
                            , mapTab
                            ];
    self.delegate = self;
    [self setSelectedViewController:listTab];

  }
  
  return self;
}


- (void)viewWillAppear:(BOOL)animated
{
  [self.view setBackgroundColor:[UIColor whiteColor]];
  [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end

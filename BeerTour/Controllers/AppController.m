//
//  AppController.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "AppController.h"

@interface AppController ()

@end

@implementation AppController

- (id)init {
  if (self = [super init])
  {
    ListController *tab1 = [ListController new];
    MapController  *tab2 = [MapController new];
    
    self.viewControllers = @[
                              tab1
                            , tab2
                            ];
    self.selectedViewController = tab1;
  }
  return self;
}

- (void)viewDidLoad
{
  [self.view setBackgroundColor:[UIColor whiteColor]];
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end

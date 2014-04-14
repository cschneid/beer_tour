//
//  BreweryDetailViewController.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "BreweryDetailController.h"

@interface BreweryDetailController ()

@end

@implementation BreweryDetailController {
  Brewery *brewery;
  UILabel *titleLabel;
}

- (id) initWithBrewery:(Brewery*)b {
  if (self = [super init]) {
    brewery = b;
    self.title = brewery.name;
    
  }
  return self;
}

- (void)viewDidLoad
{
  self.view.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:[self buildTitleLabel]];
  [self applyLayout];

  self.view.backgroundColor = [UIColor whiteColor];
  [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

#pragma mark Building UI Elements

- (UILabel*)buildTitleLabel
{
  titleLabel = [[UILabel alloc] init];
  titleLabel.text = brewery.name;
  titleLabel.textColor = [UIColor blackColor];
  titleLabel.translatesAutoresizingMaskIntoConstraints = YES;
  return titleLabel;
}

#pragma mark Auto Layout

- (void)applyLayout
{
  [self layoutTitleLabel];
}

- (void)layoutTitleLabel
{
  [titleLabel centerInContainerOnAxis:NSLayoutAttributeCenterX];
  [titleLabel pinToSuperviewEdges:JRTViewPinTopEdge inset:0];
}

@end

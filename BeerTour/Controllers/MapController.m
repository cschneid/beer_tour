//
//  MapController.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "MapController.h"

@interface MapController ()

@end

@implementation MapController {
  MKMapView *mapView;
}

- (id) init {
  if (self = [super init]) {
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Map" image:[UIImage imageNamed:@"map"] selectedImage:[UIImage imageNamed:@"map"]];
  }
  return self;
}

- (void)viewDidLoad
{
  self.view.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:[self buildMapView]];
  [self applyLayout];
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}


#pragma mark Building UI Elements

- (MKMapView*)buildMapView
{
  mapView = [[MKMapView alloc] init];
  mapView.translatesAutoresizingMaskIntoConstraints = NO;
  return mapView;
}

#pragma mark Auto Layout

- (void)applyLayout
{
  [self layoutMapView];
}

- (void)layoutMapView
{
  [mapView pinToSuperviewEdges:JRTViewPinAllEdges inset:0];
}

@end

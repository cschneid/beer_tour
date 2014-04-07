//
//  ListController.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "ListController.h"

@interface ListController ()

@end

@implementation ListController {
  UITableView *tableView;
  id<UITableViewDataSource> dataSource;
}

- (id) init {
  if (self = [super init]) {
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"List" image:[UIImage imageNamed:@"list"] selectedImage:[UIImage imageNamed:@"list"]];
  }
  return self;
}

- (void)viewDidLoad
{
  dataSource = [[BreweryListDataSource alloc] initWithArray:[BreweryCollection allBreweries]];
  self.view.translatesAutoresizingMaskIntoConstraints = NO;
  
  [self.view addSubview:[self buildTableView]];
  [self applyLayout];
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

#pragma mark Building UI Elements

- (UITableView*)buildTableView
{
  tableView = [[UITableView alloc] init];
  tableView.dataSource = dataSource;
  tableView.translatesAutoresizingMaskIntoConstraints = NO;
  return tableView;
}

#pragma mark Auto Layout

- (void)applyLayout
{
  [self layoutTableView];
}

- (void)layoutTableView
{
  [tableView pinToSuperviewEdges:JRTViewPinLeftEdge | JRTViewPinRightEdge | JRTViewPinBottomEdge inset:0];
  [tableView pinToSuperviewEdges:JRTViewPinTopEdge inset:20];
}

@end

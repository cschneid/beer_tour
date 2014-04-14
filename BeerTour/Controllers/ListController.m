//
//  ListController.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "ListController.h"

@interface ListController () <UITableViewDelegate>

@end

@implementation ListController {
  UITableView *tableView;
  BreweryListDataSource *dataSource;
}

- (void)viewDidLoad
{
  dataSource = [[BreweryListDataSource alloc] initWithArray:[BreweryCollection allBreweries]];
//  self.view.translatesAutoresizingMaskIntoConstraints = NO;
  self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  [self.view setBackgroundColor:[UIColor orangeColor]];
  [self.view addSubview:[self buildTableView]];
  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
  [self applyLayout];
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
  tableView.delegate = self;
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
  [tableView pinToSuperviewEdges:JRTViewPinTopEdge inset:0];
}

#pragma mark UITableViewDelegate Implementation

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSUInteger rowIndex = [indexPath indexAtPosition:0];
  Brewery *brewery = [dataSource breweryForIndex:rowIndex];
  BreweryDetailController *detailController = [[BreweryDetailController alloc] initWithBrewery:brewery];
  [[self navigationController] pushViewController:detailController animated:YES];
}


@end

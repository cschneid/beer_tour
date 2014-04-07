//
//  BreweryListDataSource.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "BreweryListDataSource.h"

@implementation BreweryListDataSource {
  NSArray *breweries;
}

-(id)initWithArray:(NSArray *)arr {
  if (self = [super init]) {
    breweries = arr;
    
    NSMutableArray *newCells = @[].mutableCopy;
    for (Brewery *obj in arr) {
      UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
      
      cell.textLabel.text = obj.name;
      
      [newCells addObject:cell];
    }
    
    _cells = [[NSArray alloc]initWithArray:newCells];
  }
  return self;
}

#pragma mark UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return _cells[indexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [_cells count];
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
  return NO;
}

@end


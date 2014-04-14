//
//  BreweryListDataSource.h
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Brewery.h"

@interface BreweryListDataSource : NSObject <UITableViewDataSource>

-(id)initWithArray:(NSArray *)arr;
-(Brewery*)breweryForIndex:(NSUInteger)index;

@property (strong, nonatomic) NSArray *cells;

@end

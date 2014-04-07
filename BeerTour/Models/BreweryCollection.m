//
//  BreweryCollection.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "BreweryCollection.h"
#import "AppDelegate.h"
@implementation BreweryCollection

+(NSArray*)allBreweries {
  return @[
            [[Brewery alloc] initWithName:@"Pateros"]
          , [[Brewery alloc] initWithName:@"New Belgium"]
          , [[Brewery alloc] initWithName:@"Fort Collins Brewery"]
          ];
}

@end

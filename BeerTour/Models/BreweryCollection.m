//
//  BreweryCollection.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "BreweryCollection.h"

@implementation BreweryCollection

+(NSArray*)allBreweries {
  
  NSError *unchecked_error; // Screw checking errors!

  return @[
      [Brewery modelWithDictionary:@{ @"name" : @"Pateros" } error:&unchecked_error]
    , [Brewery modelWithDictionary:@{ @"name" : @"New Belgium" } error:&unchecked_error]
    , [Brewery modelWithDictionary:@{ @"name" : @"Fort Collins Brewery" } error:&unchecked_error]
   ];
}

@end

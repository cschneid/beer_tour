//
//  BreweryCollection.h
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Brewery.h"
#import "BreweryModel.h"

@interface BreweryCollection : NSObject
+(void)seedBreweries;
+(NSArray*)allBreweries;
@end

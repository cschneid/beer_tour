//
//  Brewery.m
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "Brewery.h"

@implementation Brewery

-(id)initWithName:(NSString*)name {
  if (self = [super init]) {
    _name = name;
  }
  return self;
}

@end

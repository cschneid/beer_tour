//
//  Brewery.h
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle.h>

@interface Brewery : MTLModel

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *street;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *zip;
@property (strong, nonatomic) NSString *website;
@property (strong, nonatomic) NSNumber *latitude;
@property (strong, nonatomic) NSNumber *longitude;

@end

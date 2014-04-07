//
//  Brewery.h
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Brewery : NSObject

-(id)initWithName:(NSString*)name;

@property (strong, nonatomic) NSString *name;

@end

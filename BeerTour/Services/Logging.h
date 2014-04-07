//
//  AppController.h
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import <DDLog.h>
#import <DDASLLogger.h>
#import <DDTTYLogger.h>

static const int ddLogLevel = LOG_LEVEL_VERBOSE;

@interface Logging : NSObject
+(void)setup;
@end

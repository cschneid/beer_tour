//
//  AppController.h
//  BeerTour
//
//  Created by Christopher Schneider on 3/22/14.
//  Copyright (c) 2014 Razormoose LLC. All rights reserved.
//

#import "Logging.h"

@implementation Logging

+(void)setup {
  DDASLLogger *aslLogger = [DDASLLogger sharedInstance];
  [DDLog addLogger:aslLogger];
  
  DDTTYLogger *ttyLogger = [DDTTYLogger sharedInstance];
  [ttyLogger setColorsEnabled:YES];
  [DDLog addLogger:ttyLogger];
  
  DDLogInfo(@"Initialized Logger");
}

@end

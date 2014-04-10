//
//  UIViewController+ChildControllers.h
//  Monitor
//
//  Created by Christopher Schneider on 1/30/14.
//  Copyright (c) 2014 Comverge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ChildControllers)

/**
 *  Attach the child view controller AND the view, AND do the right notification
 *
 *  @param child The child view controller you'd like to attach. Its view becomes a direct descendant of this Controller's view
 */
- (void)attachChildViewController:(UIViewController*)child;

@end

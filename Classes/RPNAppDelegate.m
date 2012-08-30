//
//  RPNAppDelegate.m
//  RPN
//
//  Created by freegnu on 8/18/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "RPNAppDelegate.h"
#import "RPNViewController.h"

@implementation RPNAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end

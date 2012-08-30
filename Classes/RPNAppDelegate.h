//
//  RPNAppDelegate.h
//  RPN
//
//  Created by freegnu on 8/18/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RPNViewController;

@interface RPNAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RPNViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RPNViewController *viewController;

@end


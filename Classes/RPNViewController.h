//
//  RPNViewController.h
//  RPN
//
//  Created by freegnu on 8/18/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RPNStack;
@interface RPNViewController : UIViewController {
	UILabel *display;
	NSNumber *value;
	RPNStack *stack;
}
@property (retain,nonatomic) IBOutlet UILabel *display;
@property (retain,nonatomic) NSNumber *value;
@property (retain,nonatomic) RPNStack *stack;
-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)operatorPressed:(UIButton *)sender;
@end

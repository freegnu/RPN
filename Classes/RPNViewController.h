//
//  RPNViewController.h
//  RPN
//
//  Created by freegnu on 8/18/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RPNStack;
@interface RPNViewController:UIViewController
@property(retain,nonatomic)IBOutlet UILabel *display;
-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)delPressed:(UIButton *)sender;
-(IBAction)clearPressed:(UIButton *)sender;
-(IBAction)allClearPressed:(UIButton *)sender;
-(IBAction)pushPressed:(UIButton *)sender;
-(IBAction)popPressed:(UIButton *)sender;
-(IBAction)swapPressed:(UIButton *)sender;
-(IBAction)operatorPressed:(UIButton *)sender;
@end

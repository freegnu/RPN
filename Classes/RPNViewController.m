//
//  RPNViewController.m
//  RPN
//
//  Created by freegnu on 8/18/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "RPNViewController.h"
#import "RPNStack.h"
@implementation RPNViewController
@synthesize display,value,stack;
-(NSNumber *)value{
	if(!value) return value=[[NSNumber alloc] initWithDouble:(double)0];
	return value;
}
-(RPNStack *)stack{
	if(!stack) return stack=[[RPNStack alloc] init];
	return stack;
}
-(IBAction)digitPressed:(UIButton *)sender{
	self.value=[[NSNumber alloc] initWithDouble:([self.value doubleValue]*10)+[sender.currentTitle integerValue]];
	self.display.text=[self.value stringValue];
}
-(IBAction)operatorPressed:(UIButton *)sender{
	self.value=[self.stack operation:sender.currentTitle operand:self.value];
	self.display.text=[self.value stringValue];
}
@end

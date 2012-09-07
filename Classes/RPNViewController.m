//
//  RPNViewController.m
//  RPN
//
//  Created by freegnu on 8/18/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "RPNViewController.h"
#import "RPNStack.h"
@interface RPNViewController()
@property (retain,nonatomic) NSNumber *value;
@property (retain,nonatomic) RPNStack *stack;
@end
@implementation RPNViewController
@synthesize display=_display,value=_value,stack=_stack;
-(NSNumber *)value{
	if(!_value)
    return _value=[[NSNumber alloc] initWithDouble:(double)0];
	return _value;
}
-(void)setValue:(NSNumber *)value{
  _value=value;
  self.display.text=[value stringValue];
}
-(RPNStack *)stack{
	if(!_stack)
    return _stack=[[RPNStack alloc] init];
	return _stack;
}
-(IBAction)digitPressed:(UIButton *)sender{
	self.value=[[NSNumber alloc] initWithDouble:([self.value doubleValue]*10)+[sender.currentTitle integerValue]];
}
-(IBAction)delPressed:(UIButton *)sender{
  self.value=[[NSNumber alloc] initWithDouble:[self.value doubleValue]/(double)10 ];
}
-(IBAction)clearPressed:(UIButton *)sender{
  self.value=[[NSNumber alloc] initWithDouble:(double)0];
}
-(IBAction)allClearPressed:(UIButton *)sender{
  self.stack=[[RPNStack alloc] init];
}
-(IBAction)pushPressed:(UIButton *)sender{
  [self.stack push:self.value];
  self.value=[[NSNumber alloc] initWithDouble:(double)0];
}
-(IBAction)popPressed:(UIButton *)sender{
  self.value=[self.stack pop:[self.stack getProgram]];
}
-(IBAction)swapPressed:(UIButton *)sender{
  NSNumber *value=[self.stack pop:[self.stack getProgram]];
  [self.stack push:self.value];
  self.value=value;
}
-(IBAction)operatorPressed:(UIButton *)sender{
  [self.stack push:self.value];
  [self.stack push:sender.currentTitle];
	self.value=[self.stack calculate:[self.stack getProgram]];
}
@end

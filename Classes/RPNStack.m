//
//  RPNStack.m
//  RPN
//
//  Created by freegnu on 8/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "RPNStack.h"
@implementation RPNStack
@synthesize stack;
-(NSMutableArray *)stack{
	if(!stack)	return stack=[[NSMutableArray alloc] init];
	return stack;
}
-(void)push:(NSNumber *)value{
	[self.stack addObject:value];
}
-(NSNumber *)pop{
	NSNumber *last=[self.stack lastObject];
	if([self.stack count]) [self.stack removeLastObject];
	return last;
}
-(NSNumber *)operation:(NSString *)operator operand:(NSNumber *)value{
	NSNumber *last;
	//if ([self.stack count]){
		if([operator isEqualToString:@"+"]){
			last=[[NSNumber alloc] initWithDouble:[value doubleValue]+[[self pop] doubleValue]];
		} else if([operator isEqualToString:@"-"]){
			last=[[NSNumber alloc] initWithDouble:[value doubleValue]-[[self pop] doubleValue]];
		} else if([operator isEqualToString:@"*"]){
			last=[[NSNumber alloc] initWithDouble:[value doubleValue]*[[self pop] doubleValue]];
		} else if([operator isEqualToString:@"/"]){
			last=[[NSNumber alloc] initWithDouble:[value doubleValue]/[[self pop] doubleValue]];
		}
	//}
	else if([operator isEqualToString:@"PUSH"]){
		[self.stack addObject:value];
		last=[[NSNumber alloc] initWithDouble:(double)0];
	}
	return last;
}
@end

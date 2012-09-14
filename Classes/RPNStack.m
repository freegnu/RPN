//
//  RPNStack.m
//  RPN
//
//  Created by freegnu on 8/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "RPNStack.h"
@implementation RPNStack
@synthesize stack=_stack;
-(id)stack{
	if(!_stack)
    return _stack=[[NSMutableArray alloc] init];
	return _stack;
}
-(void)push:(id)value{
	[self.stack addObject:value];
}
-(id)pop:(id)program{
	id last=[program lastObject];
	if([program count])
    [program removeLastObject];
	return last;
}
-(id)calculate:(id)program{
  NSMutableArray *values;
  if([program isKindOfClass:[NSNumber class]]){
    return values;
  }else if([program isKindOfClass:[NSArray class]]){
    values = [program mutableCopy];
  }
	id last = [self pop:values];
	if([last isKindOfClass:[NSString class]]&&[values count]){
    if([last isEqualToString:@"+"]){
      last=[[NSNumber alloc] initWithDouble:[[self calculate:values] doubleValue]+[[self calculate:values] doubleValue]];
    }else if([last isEqualToString:@"-"]){
      last=[[NSNumber alloc] initWithDouble:(-[[self calculate:values] doubleValue])+[[self calculate:values] doubleValue]];
    }else if([last isEqualToString:@"*"]){
      last=[[NSNumber alloc] initWithDouble:[[self calculate:values] doubleValue]*[[self calculate:values] doubleValue]];
    }else if([last isEqualToString:@"/"]){
      last=[[NSNumber alloc] initWithDouble:(1/[[self calculate:values] doubleValue])*[[self calculate:values] doubleValue]];
    }
  }
  return last;
}
-(id)getProgram{
  return [self.stack copy];
}
-(id)setProgram:(id)state{
  id item'
  id program=(id)[state mutableCopy];
  if(program){
    while(item=[[program lastObject]){
      [program removeLastObject];
      [self push:item];
    }
  }
}
@end

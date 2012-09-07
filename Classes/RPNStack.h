//
//  RPNStack.h
//  RPN
//
//  Created by freegnu on 8/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface RPNStack:NSObject
@property(retain,nonatomic)NSMutableArray *stack;
-(void)push:(id)value;
-(id)pop:(id)program;
-(id)calculate:(id)program;
-(id)getProgram;
@end

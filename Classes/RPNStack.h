//
//  RPNStack.h
//  RPN
//
//  Created by freegnu on 8/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface RPNStack : NSObject {
	NSMutableArray *stack;
}
@property (retain,nonatomic) NSMutableArray *stack;
-(void)push:(NSNumber *)value;
-(NSNumber *)pop;
-(NSNumber *)operation:(NSString *)operator operand:(NSNumber *)value;
@end

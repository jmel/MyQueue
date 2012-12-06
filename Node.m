//
//  Node.m
//  MyQueue
//
//  Created by Jason  Melbourne on 12/5/12.
//  Copyright 2012 GravityCode.com. All rights reserved.
//

#import "Node.h"


@implementation Node

@synthesize data;
@synthesize nextInQueue;

-(void) dealloc
{
	[data release];
	[nextInQueue release];
	[super dealloc];
} // end dealloc

-(Node *) initWithData:(NSObject *) newData
{
	if (self== [super init]){
		self.data=newData;
	}
	return self;
}// end initWithData


@end

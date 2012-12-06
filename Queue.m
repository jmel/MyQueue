//
//  Queue.m
//  MyQueue
//
//  Created by Jason  Melbourne on 12/5/12.
//  Copyright 2012 GravityCode.com. All rights reserved.
//

#import "Queue.h"
#import "Node.h"

@implementation Queue

@synthesize frontOfQueue;
@synthesize backOfQueue;

-(void) dealloc
{
	[frontOfQueue release];
	[backOfQueue release];
	[super dealloc];
}// end dealloc

-(id) initWithData:(NSObject *) data
{
	if (self=[super init]) {
		Node * node =[Node alloc];
		[node initWithData:data];
		
		self.frontOfQueue=node;
		self.backOfQueue=node;
	}
	return self;
} // end initWithData

-(void) addNode:(NSObject *)data
{
	Node * node =[Node alloc];
	[node initWithData:data];
	self.backOfQueue.nextInQueue=node;
	self.backOfQueue=node;
	return;
} // end addNode

-(void) printQueue
{
	Node * tempNode=[[Node alloc] init];
	tempNode=self.frontOfQueue;
	while (tempNode != self.backOfQueue) {
		NSLog(@"Queue Print %@",tempNode.data);
		tempNode=tempNode.nextInQueue;
	}
	NSLog(@"Queue Print %@",tempNode.data);

	return;
} //end printQueue
	

-(Node *) pullNode
{
	Node * tempNode=[[Node alloc] init];
	tempNode=self.frontOfQueue;
	self.frontOfQueue=self.frontOfQueue.nextInQueue;
	return tempNode;
}// end pullNode

@end

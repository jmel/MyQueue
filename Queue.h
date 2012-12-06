//
//  Queue.h
//  MyQueue
//
//  Created by Jason  Melbourne on 12/5/12.
//  Copyright 2012 GravityCode.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Node;

@interface Queue : NSObject {
	Node * frontOfQueue;
	Node * backOfQueue;
}
@property (retain) Node * frontOfQueue;
@property (retain) Node * backOfQueue;

-(void) dealloc;
-(id) initWithData:(NSObject *) data;
-(void) addNode:(NSObject *) data;
-(void) printQueue;
-(Node *) pullNode;

@end

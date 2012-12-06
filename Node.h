//
//  Node.h
//  MyQueue
//
//  Created by Jason  Melbourne on 12/5/12.
//  Copyright 2012 GravityCode.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Node : NSObject {
	NSObject * data;
	Node * nextInQueue;
}
@property (retain) NSObject * data;
@property (retain) Node * nextInQueue;

-(Node *) initWithData:(NSObject *) newData;

@end

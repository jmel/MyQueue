#import <Foundation/Foundation.h>
#import "Queue.h"
#import "Node.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];


	NSArray * data=[NSArray arrayWithObjects:[NSNumber numberWithInt:44],@"Yes it is",@"fine",nil];
	Queue * myQueue=[Queue alloc];
	[myQueue initWithData:[data objectAtIndex:0]];
	for (NSObject * obj in [data subarrayWithRange:NSMakeRange(1,[data count]-1)]){
		[myQueue addNode:obj];
	}
	
	[myQueue printQueue];
	
	Node * tempNode = [myQueue pullNode];
	
	NSLog(@"Pulled Node with data %@",tempNode.data);
	
	[myQueue printQueue];
	
    [pool drain];
    return 0;
}

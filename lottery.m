#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Declare NSMutableArray and init
	NSMutableArray *array = [[NSMutableArray alloc] init];
	
	// Loop through array (10 times) setting each element of array to a NSNumber value of (i * 3)
	int i;
	for (i = 0; i < 10; i++) {
		NSNumber *newNumber = [[NSNumber alloc] initWithInt: (i * 3)];
		[array addObject: newNumber];
	}
	
	// Loop through array (10 times) printing each element of array to NSLog
	for (i = 0; i < 10; i++) {
		NSNumber *numberToPrint = [array objectAtIndex: i];
		NSLog(@"Number at index %d is %@", i, numberToPrint);
	}
	
    [pool drain];
    return 0;
}

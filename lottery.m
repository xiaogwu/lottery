#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	// Create the date object
	NSCalendarDate *now = [[NSCalendarDate alloc] init];
	
	// Seed the random number generator
	srandom(time(NULL));
	
	// Declare NSMutableArray and init
	NSMutableArray *array = [[NSMutableArray alloc] init];
	
	// Loop through array (10 times) setting each element of array to a NSNumber value of (i * 3)
	int i;
	for (i = 0; i < 10; i++) {
		// Create a date/time object that is 'i' weeks from now
		NSCalendarDate *iWeeksFromNow;
		iWeeksFromNow = [now dateByAddingYears:0 
										months:0 
										  days:(i * 7) 
										 hours:0 
									   minutes:0 
									   seconds:0];
		// Create a new instance of LotterEntry
		LotteryEntry *newEntry = [[LotteryEntry alloc] init];
		[newEntry prepareRandomNumbers];
		[newEntry setEntryDate:iWeeksFromNow];
		
		// Add the LotteryEntry object to the array
		[array addObject:newEntry];
	}
	
	// Loop through array (10 times) printing each element of array to NSLog
	for (LotteryEntry *entryToPrint in array) {
		// Display its contents
		NSLog(@"%@", entryToPrint);
	}
	
    [pool drain];
    return 0;
}

//
//  LotteryEntry.m
//  lottery
//
//  Created by Xiao G. Wu on 10/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"


@implementation LotteryEntry

- (void)prepareRandomNumbers {
	firstNumber = random() % 100 + 1;
	secondNumber = random() % 100 +1;
}

- (void)setEntryDate:(NSCalendarDate*)date {
	entryDate = date;
}
- (NSCalendarDate*)entryDate {
	return entryDate;
}

- (int)firstNumber {
	return firstNumber;
}

- (int)secondNumber {
	return secondNumber;
}

@end

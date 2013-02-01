//
//  Transaction.h
//  Budget Object
//
//  Created by jonathantowler on 06/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Budget;

@interface Transaction : NSObject

{
    Budget *budget;
    NSNumber *amount;
}

- (void) createTransaction: (double) theAmount forBudget: (Budget*) aBudget;
- (void) spend;
// - (void) trackSpending: (double) theAmount;

@end

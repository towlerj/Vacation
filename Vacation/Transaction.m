//
//  Transaction.m
//  Budget Object
//
//  Created by jonathantowler on 06/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import "Transaction.h"
#import "Budget.h"

@implementation Transaction
//- (void) createTransaction:(double)theAmount ofType:(transactionType)aType {
- (void) createTransaction:(double)theAmount forBudget:(Budget *)aBudget{

    //type = aType;
    budget = aBudget;
    amount = @( theAmount );
}

- (void) spend {
    // will exist in subclasses
}

/*
- (void) trackSpending:(double)theAmount{
    NSLog(@"You are about to spend another %.2f", theAmount);
}
*/

- (NSNumber *) returnAmount{
    return amount;
}


@end

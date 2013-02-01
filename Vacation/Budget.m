//
//  Budget.m
//  Budget Object
//
//  Created by jonathantowler on 02/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import "Budget.h"

@implementation Budget
- (void) createBudget:(double)aBudget withExchangeRate:(float)anExchangeRate {
    exchangeRate = anExchangeRate;
    budget = aBudget;
}

- (void) chargeForeignCurrency:(double)foreignCurrency {
    exchangeTransaction = foreignCurrency * exchangeRate;
    budget -= exchangeTransaction;
//    NSLog(@"Charging %.2f in foreign currency leaves $%.2f", foreignCurrency, budget);
}

- (void) spendDollars:(NSNumber*)dollars {
    budget -= [dollars doubleValue];
//    NSLog(@"Converting $%.2f into foreign currency leaves $%.2f", [dollars doubleValue], budget);
}

- (double) returnBalance{
    return budget;
}

@end

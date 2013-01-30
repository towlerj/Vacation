//
//  Destination.h
//  Vacation
//
//  Created by jonathantowler on 30/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Budget;
@interface Destination : NSObject

{
    NSString *country;
    NSMutableArray *transactions;
    Budget  *theBudget;
}

- (void) createWithCountry: (NSString *) theCountry andBudget: (double) budgetAmount withExchangeRate: (double) theExchangeRate;
- (void) spendCash: (double) amount;
- (void) chargeCreditCard: (double) amount;
- (double) leftToSpend;



@end

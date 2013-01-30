//
//  Destination.m
//  Vacation
//
//  Created by jonathantowler on 30/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import "Destination.h"
#import "CashTransaction.h"
#import "CreditCardTransaction.h"
#import "Budget.h"
#import "Transaction.h"



@implementation Destination

- (void) createWithCountry:(NSString *)theCountry andBudget:(double)budgetAmount withExchangeRate:(double)theExchangeRate{
    transactions = [[NSMutableArray alloc] initWithCapacity:10];
    theBudget = [Budget new];
    [theBudget createBudget:budgetAmount withExchangeRate:theExchangeRate];
    country = theCountry;
    NSLog(@"I'm off to %@", theCountry);
}

- (void) spendCash:(double)amount {
    Transaction *aTransation = [CashTransaction new];
    [aTransation createTransaction:amount forBudget:theBudget];
    [transactions addObject:aTransation];
    [aTransation spend];
}

-(void) chargeCreditCard:(double)amount {
    Transaction *aTransaction = [CreditCardTransaction new];
    [aTransaction createTransaction:amount forBudget:theBudget];
    [transactions addObject:aTransaction];
    [aTransaction spend];
}

- (double) leftToSpend{
    return [theBudget returnBalance];
}

@end

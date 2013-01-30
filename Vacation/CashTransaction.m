//
//  CashTransaction.m
//  Budget Object
//
//  Created by jonathantowler on 07/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import "CashTransaction.h"
#import "Budget.h"

@implementation CashTransaction

- (void) spend {
    [self trackSpending:[amount doubleValue]];
    [budget spendDollars:amount];
}

@end

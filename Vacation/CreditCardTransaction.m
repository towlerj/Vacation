//
//  CreditCardTransaction.m
//  Budget Object
//
//  Created by jonathantowler on 07/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import "CreditCardTransaction.h"
#import "Budget.h"

@implementation CreditCardTransaction

- (void) spend {
    [super trackSpending:[amount doubleValue]];
    [budget chargeForeignCurrency:[amount doubleValue]];
    
}

@end

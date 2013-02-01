//
//  Budget.h
//  Budget Object
//
//  Created by jonathantowler on 02/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Budget : NSObject {
    float exchangeRate;
    double budget;
    double exchangeTransaction;
}
- (void) createBudget: (double) aBudget withExchangeRate: (float) anExchangeRate;
- (void) spendDollars:(NSNumber*) dollars;
- (void) chargeForeignCurrency: (double) foreignCurrency;
- (double) returnBalance;
@end


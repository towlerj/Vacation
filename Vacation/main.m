//
//  main.m
//  Vacation
//
//  Created by jonathantowler on 30/01/2013.
//  Copyright (c) 2013 jt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Destination.h"

int main(int argc, const char * argv[])
{
    
    Destination* europe = [Destination new];
    NSString* europeText = [[NSString alloc]initWithFormat: @"%@",@"Europe"];
    [europe createWithCountry:europeText andBudget:1000.00 withExchangeRate:1.25];
    Destination* england = [Destination new];
    NSString* englandText = [[NSString alloc]initWithFormat: @"%@",@"England"];
    [england createWithCountry:englandText andBudget:2000.00 withExchangeRate:1.50];
    
    for (int n=1;n<2;n++){
        double transaction = n*100.00;
        NSLog(@"Spending %.2f cash transaction.", transaction);
        [europe spendCash:transaction];
        NSLog(@"Remaining cash %.2f", [europe leftToSpend]);
        
        NSLog(@"Spending %.2f cas transaction", transaction);
        [england spendCash:transaction];
        NSLog(@"Remaining cash %.2f", [england leftToSpend]);
    }
    
    
        int n=1;
        while (n<4){
            double transaction = n*100.00;
            NSLog(@"Spending %.2f credit card transaction", transaction);
            [europe chargeCreditCard:transaction];
            NSLog(@"Remaing cash %.2f", [europe leftToSpend]);
            NSLog(@"Spending %.2f credit card transaction", transaction);
            [england chargeCreditCard:transaction];
            NSLog(@"Remaing cash %.2f", [england leftToSpend]);
            n++;
        }
        
    
    return 0;
    
}


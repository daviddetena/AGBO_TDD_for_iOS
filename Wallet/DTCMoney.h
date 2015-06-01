//
//  DTCMoney.h
//  Wallet
//
//  Created by David de Tena on 01/06/15.
//  Copyright (c) 2015 David de Tena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DTCMoney : NSObject

@property (copy,readonly) NSString *currency;

#pragma mark -  Class methods
+(instancetype) dollarWithAmount:(NSUInteger) amount;
+(instancetype) euroWithAmount:(NSUInteger) amount;

#pragma mark - Init
-(id) initWithAmount:(NSUInteger) amount
            currency:(NSString *) currency;

#pragma mark - Methods
-(DTCMoney *) times:(NSUInteger) multiplier;

@end

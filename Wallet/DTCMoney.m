//
//  DTCMoney.m
//  Wallet
//
//  Created by David de Tena on 01/06/15.
//  Copyright (c) 2015 David de Tena. All rights reserved.
//

#import "NSObject+GNUStep.h"
#import "DTCMoney.h"

@interface DTCMoney()
@property (nonatomic) NSUInteger amount;
@end

@implementation DTCMoney


#pragma mark -  Class methods
+(instancetype) dollarWithAmount:(NSUInteger) amount{
    DTCMoney *dollar = [[DTCMoney alloc] initWithAmount:amount currency:@"USD"];
    return dollar;
}


+(instancetype) euroWithAmount:(NSUInteger) amount{
    DTCMoney *euro = [[DTCMoney alloc] initWithAmount:amount currency:@"EUR"];
    return euro;
}


// Hacemos que los métodos de Money los implementen sus subclases
#pragma mark - Init
-(id) initWithAmount:(NSUInteger) amount currency:(NSString *) currency{
    if(self = [super init]){
        _amount = amount;
        _currency = currency;
    }
    return self;
}

-(DTCMoney *) times:(NSUInteger)multiplier{
    return [[DTCMoney alloc] initWithAmount:_amount currency:self.currency];
}

#pragma mark - Equality

-(BOOL) isEqual:(id)object{
    return [self amount] == [object amount];
}

@end

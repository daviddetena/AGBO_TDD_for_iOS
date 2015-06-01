//
//  DTCMoneyTest.m
//  Wallet
//
//  Created by David de Tena on 01/06/15.
//  Copyright (c) 2015 David de Tena. All rights reserved.
//

@import Foundation;
#import "DTCMoney.h"
#import <XCTest/XCTest.h>

@interface DTCMoneyTest : XCTestCase

@end

@implementation DTCMoneyTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testThatInitDoesNotRaiseException{
    XCTAssertNoThrow([DTCMoney dollarWithAmount:3]);
    XCTAssertNoThrow([DTCMoney euroWithAmount:3]);
}


- (void) testCurrency{
    
    DTCMoney *dollars = [DTCMoney dollarWithAmount:1];
    XCTAssertEqualObjects(@"USD", [dollars currency]);
 
    DTCMoney *euros = [DTCMoney euroWithAmount:1];
    XCTAssertEqualObjects(@"EUR", [euros currency]);
}


-(void) testMultiplication{
    DTCMoney *five = [DTCMoney euroWithAmount:5];
    DTCMoney *product = [five times:2];
    XCTAssertEqualObjects(product, [DTCMoney euroWithAmount:10]);
    
    DTCMoney *fiveUSD = [DTCMoney dollarWithAmount:5];
    DTCMoney *productUSD = [fiveUSD times:2];
    XCTAssertEqualObjects(productUSD, [DTCMoney dollarWithAmount:10]);
}


-(void) testEquality{
    DTCMoney *five = [DTCMoney euroWithAmount:5];
    DTCMoney *otherFive = [DTCMoney euroWithAmount:5];
    XCTAssertEqualObjects(five, otherFive);
    
    DTCMoney *seven = [DTCMoney euroWithAmount:7];
    XCTAssertNotEqualObjects(seven, five);
}

@end

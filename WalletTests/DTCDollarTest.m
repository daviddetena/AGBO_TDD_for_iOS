//
//  DTCDollarTest.m
//  Wallet
//
//  Created by David de Tena on 01/06/15.
//  Copyright (c) 2015 David de Tena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DTCDollar.h"

@interface DTCDollarTest : XCTestCase

@end

@implementation DTCDollarTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testMultiplication{
    DTCMoney *five = [DTCMoney dollarWithAmount:5];
    DTCMoney *product = [five times:2];
    
    XCTAssertEqualObjects(product, [DTCMoney dollarWithAmount:10]);
}

@end

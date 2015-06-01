//
//  DTCEuroTest.m
//  Wallet
//
//  Created by David de Tena on 01/06/15.
//  Copyright (c) 2015 David de Tena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "DTCEuro.h"

@interface DTCEuroTest : XCTestCase

@end

@implementation DTCEuroTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testMultiplication{
    DTCMoney *five = [DTCMoney euroWithAmount:5];
    DTCMoney *product = [five times:2];
    XCTAssertEqualObjects(product, [DTCMoney euroWithAmount:10]);
}


-(void) testEquality{
    DTCMoney *five = [DTCMoney euroWithAmount:5];
    DTCMoney *otherFive = [DTCMoney euroWithAmount:5];
    
    XCTAssertEqualObjects(five, otherFive);
    
    DTCMoney *seven = [DTCMoney euroWithAmount:7];
    
    XCTAssertNotEqualObjects(seven, five);
}

@end

//
//  StatePatternTests.m
//  StatePatternTests
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StatePattern/SaleMachine.m"

@interface StatePatternTests : XCTestCase

@end

@implementation StatePatternTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    SaleMachine *machine=[[SaleMachine alloc]initWithCount:1];
    [machine putMoney];
    [machine ejectMoney];
    
    [machine putMoney];
    [machine pressButton];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

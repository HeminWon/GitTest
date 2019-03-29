//
//  SoldState.m
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "SoldState.h"

@implementation SoldState

-(void)putMoney{
    NSLog(@"SoldState-putMoney:请稍后,正在进行商品出售");
}

-(void)ejectMoney{
    NSLog(@"SoldState-putMoney:请稍后,正在进行商品出售,无法退钱");
}

-(void)pressButton{
    NSLog(@"SoldState-putMoney:请在取出物品之后重新投币");
}

-(void)distribute{
    [self.delegate realseProduct];
    if ([self.delegate getCurrentCount]) {
        [self.delegate setCurrentState:[self.delegate getNoMoneyState]];
    }else{
        [self.delegate setCurrentState:[self.delegate getSoldOutState]];
    }
}

@end

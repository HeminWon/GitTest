//
//  HasMoneyState.m
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "HasMoneyState.h"

@implementation HasMoneyState

-(void)putMoney{
    NSLog(@"HasMoneyState-putMoney:已经投入了钱，暂不支持投入");
}

-(void)ejectMoney{
    NSLog(@"HasMoneyState-ejectMoney:退钱,重新设置售卖机为无前状态");
    [self.delegate setCurrentState:[self.delegate getNoMoneyState]];
}

-(void)pressButton{
    NSLog(@"HasMoneyState-pressButton:按钮按下,取货");
    [self.delegate setCurrentState:[self.delegate getSoldState]];
}

-(void)distribute{
    NSLog(@"HasMoneyState-distribute:无法进行取出商品");
}

@end

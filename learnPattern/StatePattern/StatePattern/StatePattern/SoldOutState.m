//
//  SoldOutState.m
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "SoldOutState.h"

@implementation SoldOutState

-(void)putMoney{
    NSLog(@"SoldOutState-PutMoney:已售罄");
}

-(void)ejectMoney{
    NSLog(@"SoldOutState-ejectMoney:无法退钱");
}

-(void)pressButton{
    NSLog(@"SoldOutState-pressButton:无法售出");
}

-(void)distribute{
    NSLog(@"SoldOutState-distribute:无法分发");
}

@end

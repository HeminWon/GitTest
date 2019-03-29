//
//  NoMoneyState.m
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "NoMoneyState.h"

@implementation NoMoneyState

-(void)putMoney{
    NSLog(@"NoMoneyState-putMoney:投放钱币");
    [self.delegate setCurrentState:[self.delegate geHasMoneyState]];
}

-(void)ejectMoney{
    NSLog(@"NoMoneyState-ejectMoney:没有投入钱币,无法退钱");
}

-(void)pressButton{
    NSLog(@"NoMoneyState-pressButton:请先投币");
}

-(void)distribute{
    NSLog(@"NoMoneyState-pressButton:请投币");
}

@end

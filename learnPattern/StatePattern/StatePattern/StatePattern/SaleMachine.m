//
//  SaleMachine.m
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "SaleMachine.h"
#import "NoMoneyState.h"
#import "HasMoneyState.h"
#import "SoldState.h"
#import "SoldOutState.h"

@interface SaleMachine ()<NoMoneyDelegate,HasMoneyDelegate,SoldOutDelegate,SoldDelegate>

@property (strong,nonatomic)  State *state;
@property (assign,nonatomic)  NSInteger  productCount;

@property  (strong,nonatomic) NoMoneyState  *noMoneyState;
@property  (strong,nonatomic) HasMoneyState *hasMoneyState;
@property  (strong,nonatomic) SoldOutState  *soldOutState;
@property  (strong,nonatomic) SoldState     *soldState;

@end

@implementation SaleMachine

-(instancetype)initWithCount:(NSInteger)count{
    self=[super init];
    if (self) {
        self.noMoneyState=[[NoMoneyState alloc]init];
        self.noMoneyState.delegate=self;
        self.hasMoneyState=[[HasMoneyState alloc]init];
        self.hasMoneyState.delegate=self;
        self.soldState=[[SoldState alloc]init];
        self.soldState.delegate=self;
        self.soldOutState=[[SoldOutState alloc]init];
        self.soldOutState.delegate=self;
        self.productCount=count;
        if (count) {
            self.state=self.noMoneyState;
        }
    }
    return self;
}

-(void)putMoney{
    [self.state putMoney];
}

-(void)ejectMoney{
    [self.state ejectMoney];
}

-(void)pressButton{
    [self.state pressButton];
    [self.state distribute];
}

-(void)setCurrentState:(State *)currentState{
    self.state=currentState;
}
#pragma mark - NoMoenyDelegate
-(State *)geHasMoneyState{
    return self.hasMoneyState;
}

#pragma mark - HasMoneyDelegate
-(State *)getNoMoneyState{
    return self.noMoneyState;
}

-(State *)getSoldState{
    return self.soldState;
}
#pragma mark - SoldDelegate
-(void)realseProduct{
    NSLog(@"SoldDelegate-realseProduct:商品售出");
    if (self.productCount) {
        self.productCount-=1;
    }
}

-(State *)getSoldOutState{
    return self.soldOutState;
}

-(NSInteger)getCurrentCount{
    return self.productCount;
}

@end

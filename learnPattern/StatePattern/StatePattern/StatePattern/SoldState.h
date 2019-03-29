//
//  SoldState.h
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@protocol  SoldDelegate <NSObject>

-(void)setCurrentState:(State *)currentState;

-(void)realseProduct;

-(NSInteger)getCurrentCount;

-(State *)getNoMoneyState;

-(State *)getSoldOutState;

@end

@interface SoldState : State

@property (weak,nonatomic) id<SoldDelegate> delegate;

@end

NS_ASSUME_NONNULL_END

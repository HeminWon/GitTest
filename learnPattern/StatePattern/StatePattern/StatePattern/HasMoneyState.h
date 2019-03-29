//
//  HasMoneyState.h
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@protocol  HasMoneyDelegate <NSObject>

-(void)setCurrentState:(State *)currentState;

-(State *)getNoMoneyState;

-(State *)getSoldState;

@end

@interface HasMoneyState : State

@property (weak,nonatomic) id<HasMoneyDelegate> delegate;

@end

NS_ASSUME_NONNULL_END

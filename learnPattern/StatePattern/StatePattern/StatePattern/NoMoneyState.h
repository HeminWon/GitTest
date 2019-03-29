//
//  NoMoneyState.h
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@protocol NoMoneyDelegate <NSObject>

-(void)setCurrentState:(State *)currentState;
-(State *)geHasMoneyState;
@end

@interface NoMoneyState : State

@property (weak,nonatomic) id<NoMoneyDelegate> delegate;

@end

NS_ASSUME_NONNULL_END

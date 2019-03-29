//
//  SoldOutState.h
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@protocol  SoldOutDelegate <NSObject>

-(void)setCurrentState:(State *)currentState;

@end

@interface SoldOutState : State

@property (weak,nonatomic) id<SoldOutDelegate>  delegate;

@end

NS_ASSUME_NONNULL_END

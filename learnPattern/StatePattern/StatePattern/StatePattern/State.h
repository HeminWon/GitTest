//
//  State.h
//  StatePattern
//
//  Created by 王明海 on 2019/3/21.
//  Copyright © 2019 HeminWon. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol StateProtocol <NSObject>

@optional
-(void)putMoney;
-(void)ejectMoney;
-(void)pressButton;
-(void)distribute;

@end

@interface State : NSObject<StateProtocol>

@end

NS_ASSUME_NONNULL_END

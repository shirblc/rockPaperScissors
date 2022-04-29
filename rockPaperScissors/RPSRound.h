//
//  RPSRound.h
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 29/04/2022.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, Player) {
    User,
    Computer,
    Draw
};

@interface RPSRound : NSObject

@property (nonatomic) Move userMove;
@property (nonatomic, readonly) Move computerMove;

-(Player)playRound;

@end

NS_ASSUME_NONNULL_END

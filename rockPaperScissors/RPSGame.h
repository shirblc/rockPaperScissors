//
//  RPSGame.h
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 28/04/2022.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSRound.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

@property (nonatomic, readonly) int userScore;
@property (nonatomic, readonly) int computerScore;
@property (nonatomic, readonly) int roundNumber;

-(instancetype)initWithMoveOne: (Move)moveOne;
-(void)playRoundWithMove: (Move)move;

@end

NS_ASSUME_NONNULL_END

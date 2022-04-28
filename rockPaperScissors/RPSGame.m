//
//  RPSGame.m
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 28/04/2022.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithMoveOne: (Move)moveOne {
    self = [super init];
    
    if(self) {
        _roundNumber = 0;
        [self playRoundWithMove:moveOne];
    }
    
    return self;
}

-(void)playRoundWithMove: (Move)move {
    self.roundNumber += 1;
    RPSTurn *round = [[RPSTurn alloc] initWithMove:move];
    Player winner = [round playRound];
    
    switch (winner) {
        case User:
            self.userScore += 1;
            break;
            
        case Computer:
            self.computerScore += 1;
            break;
            
        default:
            break;
    }
}

/* Private Setters */
-(void)setRoundNumber:(int)roundNumber {
    _roundNumber = roundNumber;
}

-(void)setUserScore:(int)userScore {
    _userScore = userScore;
}

-(void)setComputerScore:(int)computerScore {
    _computerScore = computerScore;
}

@end

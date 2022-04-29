//
//  RPSGame.m
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 28/04/2022.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)init {
    self = [super init];
    
    if(self) {
        _roundNumber = 0;
    }
    
    return self;
}

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
    RPSRound *round = [[RPSRound alloc] initWithMove:move];
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

-(NSInteger)getUserMove {
    NSLog(@"RPS Round! Enter 0 (rock), 1 (paper) or 2 (scissors)");
    sleep(5);
    
    NSInteger selection = [self getUserInput];
    
    return selection;
}

-(NSInteger)shouldContinueGame {
    NSLog(@"Another round? Enter 0 for no, 1 for yes.");
    sleep(5);
    
    NSInteger selection = [self getUserInput];
    
    return selection;
}

-(NSInteger)getUserInput {
    NSFileHandle *handler = [NSFileHandle fileHandleWithStandardInput];
    NSData *readData = handler.availableData;
    NSString *userSelection = [[NSString alloc] initWithData:readData encoding:NSUTF8StringEncoding];
    NSInteger selectionInt = [userSelection integerValue];
    
    return selectionInt;
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

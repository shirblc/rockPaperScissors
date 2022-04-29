//
//  RPSRound.m
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 29/04/2022.
//

#import "RPSRound.h"

@implementation RPSRound

-(instancetype)initWithMove:(Move)move {
    self = [super init];
    
    if(self) {
        NSLog(@"User:");
        _userTurn = [[RPSTurn alloc] initWithMove:move];
    }
    
    return self;
}

-(instancetype)initWithTurn: (RPSTurn*)turn {
    self = [super init];
    
    if(self) {
        NSLog(@"User:");
        _userTurn = turn;
    }
    
    return self;
}

-(void)generateComputerMove {
    int randomNumber = arc4random_uniform(3);
    NSLog(@"Computer:");
    self.computerMove = [[RPSTurn alloc] initWithMove:randomNumber];
}

-(Player)checkWhoWon {
    // if there's a draw
    if(self.userTurn.move == self.computerTurn.move) {
        NSLog(@"There's a draw!");
        return Draw;
    // if the user's move is bigger than the computer's, it's either a win or a scissors-rock case
    } else if(self.userTurn.move > self.computerTurn.move) {
        if(self.userTurn.move == Scissors && self.computerTurn.move == Rock) {
            NSLog(@"Computer won!");
            return Computer;
        } else {
            NSLog(@"User won!");
            return User;
        }
    // if the computer's move is bigger than the users's, it's either a win or a scissors-rock case
    } else {
        if(self.computerTurn.move == Scissors && self.userTurn.move == Rock) {
            NSLog(@"User won!");
            return User;
        } else {
            NSLog(@"Computer won!");
            return Computer;
        }
    }
}

-(Player)playRound {
    [self generateComputerMove];
    Player winner = [self checkWhoWon];
    
    return winner;
}

/* Private Setters */
-(void)setComputerMove:(RPSTurn*)computerTurn {
    _computerTurn = computerTurn;
}

@end

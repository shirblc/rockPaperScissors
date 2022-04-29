//
//  RPSRound.m
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 29/04/2022.
//

#import "RPSRound.h"

@implementation RPSRound

-(void)generateComputerMove {
    int randomNumber = arc4random_uniform(3);
    self.computerMove = randomNumber;
}

-(Player)checkWhoWon {
    // if there's a draw
    if(self.userMove == self.computerMove) {
        NSLog(@"There's a draw!");
        return Draw;
    // if the user's move is bigger than the computer's, it's either a win or a scissors-rock case
    } else if(self.userMove > self.computerMove) {
        if(self.userMove == Scissors && self.computerMove == Rock) {
            NSLog(@"Computer won!");
            return Computer;
        } else {
            NSLog(@"User won!");
            return User;
        }
    // if the computer's move is bigger than the users's, it's either a win or a scissors-rock case
    } else {
        if(self.computerMove == Scissors && self.userMove == Rock) {
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
-(void)setComputerMove:(Move)computerMove {
    _computerMove = computerMove;
}

@end

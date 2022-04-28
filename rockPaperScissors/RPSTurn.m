//
//  RPSTurn.m
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 28/04/2022.
//

#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype)initWithMove: (Move)move {
    self = [super init];
    
    if(self) {
        _userMove = move;
    }
    
    return self;
}

-(void)printMove: (bool)isUser {
    Move moveToCheck;
    NSMutableString *movePrint = [[NSMutableString alloc] initWithString:@""];
    
    if (isUser) {
        moveToCheck = _userMove;
        [movePrint appendString:@"User "];
    } else {
        moveToCheck = _computerMove;
        [movePrint appendString:@"Computer "];
    }
    
    switch (moveToCheck) {
        case Rock:
            [movePrint appendString:@"chose rock!"];
            NSLog(@"%@", movePrint);
            break;
            
        case Paper:
            [movePrint appendString:@"chose paper!"];
            NSLog(@"%@", movePrint);
            break;
            
        case Scissors:
            [movePrint appendString:@"chose scissors!"];
            NSLog(@"%@", movePrint);
            break;
    }
}

-(void)generateComputerMove {
    int randomNumber = arc4random_uniform(3);
    _computerMove = randomNumber;
}

-(Player)checkWhoWon {
    // if there's a draw
    if(_userMove == _computerMove) {
        NSLog(@"There's a draw!");
        return Draw;
    // if the user's move is bigger than the computer's, it's either a win or a scissors-rock case
    } else if(_userMove > _computerMove) {
        if(_userMove == Scissors && _computerMove == Rock) {
            NSLog(@"Computer won!");
            return Computer;
        } else {
            NSLog(@"User won!");
            return User;
        }
    // if the computer's move is bigger than the users's, it's either a win or a scissors-rock case
    } else {
        if(_computerMove == Scissors && _userMove == Rock) {
            NSLog(@"User won!");
            return User;
        } else {
            NSLog(@"Computer won!");
            return Computer;
        }
    }
}

@end

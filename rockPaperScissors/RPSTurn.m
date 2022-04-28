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

@end

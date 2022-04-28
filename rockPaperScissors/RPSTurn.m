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
        _move = move;
    }
    
    return self;
}

-(void)printMove {
    switch (_move) {
        case Rock:
            NSLog(@"You chose rock!");
            break;
            
        case Paper:
            NSLog(@"You chose paper!");
            break;
            
        case Scissors:
            NSLog(@"You chose scissors!");
            break;
    }
}

@end

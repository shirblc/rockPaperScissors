//
//  RPSGame.m
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 28/04/2022.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithMoveOne: (Move)MoveOne {
    self = [super init];
    
    if(self) {
        RPSTurn *roundOne = [[RPSTurn alloc] initWithMove:MoveOne];
        _roundOne = roundOne;
    }
    
    return self;
}

@end

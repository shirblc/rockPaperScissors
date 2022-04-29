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
    NSMutableString *movePrint = [[NSMutableString alloc] initWithString:@""];
    
    switch (self.move) {
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

@end

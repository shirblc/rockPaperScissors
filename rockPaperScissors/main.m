//
//  main.m
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 28/04/2022.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"
#import "RPSTurn.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RPSGame *game = [[RPSGame alloc] init];
        bool continueGame = true;
        
        // While the user wants to continue, continue the game
        while(continueGame) {
            NSInteger userMove = [game getUserMove];
            [game playRoundWithMove:userMove];
            NSInteger shouldContinue = [game shouldContinueGame];
            
            if(shouldContinue == 0) {
                continueGame = false;
                NSLog(@"Ended game with score: User- %d, Computer- %d", game.userScore, game.computerScore);
            }
        }
    }
    return 0;
}

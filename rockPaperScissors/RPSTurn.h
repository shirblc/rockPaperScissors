//
//  RPSTurn.h
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 28/04/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RPSTurn : NSObject

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors
};

@property (nonatomic) Move userMove;
@property (nonatomic, readonly) Move computerMove;

-(instancetype)initWithMove: (Move)move;
-(void)printMove;
-(void)generateComputerMove;

@end

NS_ASSUME_NONNULL_END

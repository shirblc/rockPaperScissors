//
//  RPSGame.h
//  rockPaperScissors
//
//  Created by Shir Bar Lev on 28/04/2022.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *roundOne;
@property (nonatomic) RPSTurn *roundTwo;
@property (nonatomic) RPSTurn *roundThree;

-(instancetype)initWithMoveOne: (Move)MoveOne;

@end

NS_ASSUME_NONNULL_END

//
//  Judge.h
//  ScissorsHammer
//
//  Created by Stephen Cao on 23/1/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possibilities.h"
#import "Player.h"
#import "Robot.h"

NS_ASSUME_NONNULL_BEGIN

@interface Judge : NSObject{
    @public
    NSString *_name;
    Possibilities possibility;
    Player *_player;
    Robot *_robot;
}
-(void)claims;
-(void)showWhoWins;
-(void)showTheStatus;
-(void)judgeWhoWins;
@end

NS_ASSUME_NONNULL_END

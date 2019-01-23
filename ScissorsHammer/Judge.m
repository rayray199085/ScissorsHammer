//
//  Judge.m
//  ScissorsHammer
//
//  Created by Stephen Cao on 23/1/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import "Judge.h"

@implementation Judge
-(void)claims{
    NSLog(@"I am %@, I am the judge in this game.",_name);
}
-(void)showWhoWins{
    switch (possibility) {
        case 0:
            NSLog(@"The player %@ wins this game.",_player->_name);
            break;
        case 1:
            NSLog(@"The robot %@ wins this game.",_robot->_name);
            break;
        case 2:
            NSLog(@"That's a draw.");
            break;
            
        default:
            break;
    }
}
-(void)showTheStatus{
    NSLog(@"At this momemnt, the player %@: %d point ------- the robot %@: %d point",_player->_name,_player->_point,_robot->_name,_robot->_point);
}
-(void)judgeWhoWins{
    if((_player->_option < _robot->_option) ||(_player->_option == 2 && _robot->_option == 0)){
        [_robot winTheGame];
        possibility = 1;
    }else if (_player->_option == _robot->_option){
        possibility = 2;
    }else{
        [_player winTheGame];
        possibility = 1;
    }
}
@end

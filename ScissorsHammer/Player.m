//
//  Player.m
//  ScissorsHammer
//
//  Created by Stephen Cao on 23/1/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import "Player.h"

@implementation Player
-(void)displayResult{
    switch (_option) {
        case 0:
            NSLog(@"The player %@ shows scissor",_name);
            break;
        case 1:
            NSLog(@"The player %@ shows rock",_name);
            break;
        case 2:
             NSLog(@"The player %@ shows paper",_name);
            break;
            
        default:
            break;
    }
}
-(void)winTheGame{
    _point++;
}
@end

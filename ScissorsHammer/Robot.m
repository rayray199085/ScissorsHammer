//
//  Robot.m
//  ScissorsHammer
//
//  Created by Stephen Cao on 23/1/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import "Robot.h"

@implementation Robot
-(void)generateRandomOption{
    int value = arc4random() % 3;
    _option=value;
}
-(void)displayResult{
    switch (_option) {
        case 0:
            NSLog(@"The robot %@ shows scissor",_name);
            break;
        case 1:
            NSLog(@"The robot %@ shows rock",_name);
            break;
        case 2:
            NSLog(@"The robot %@ shows paper",_name);
            break;
            
        default:
            break;
    }
}
-(void)winTheGame{
    _point++;
}
@end

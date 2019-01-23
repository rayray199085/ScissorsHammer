//
//  main.m
//  ScissorsHammer
//
//  Created by Stephen Cao on 23/1/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Robot.h"
#import "Judge.h"
#import "Options.h"
#import "Possibilities.h"

int main(int argc, const char * argv[]) {
    Player *player = [Player new];
    player->_name=@"Super man";
    Robot *robot =[Robot new];
    robot->_name=@"Wonder woman";
    Judge *judge = [Judge new];
    judge->_name = @"xiaodangjia";
    judge->_player=player;
    judge->_robot=robot;
    Boolean stop = false;
    
    while(!stop){
        int typeIn;
        NSLog(@"Please choose your option: 1.scissor, 2.rock, 3.paper");
        scanf("%i",&typeIn);
        player->_option = typeIn-1;
        [player displayResult];
        [robot generateRandomOption];
        [robot displayResult];
        [judge claims];
        [judge judgeWhoWins];
        [judge showWhoWins];
        [judge showTheStatus];
        int quitSignal = 0;
        NSLog(@"Do you want to quit the game? press 0 to quit, or other digit keys to continue.");
        scanf("%i",&quitSignal);
        if(quitSignal == 0){
            stop = true;
            break;
        }
    }
    return 0;
}

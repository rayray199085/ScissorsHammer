//
//  Player.h
//  ScissorsHammer
//
//  Created by Stephen Cao on 23/1/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Options.h"

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject{
    @public
    NSString *_name;
    Options _option;
    int _point;
}
-(void)displayResult;
-(void)winTheGame;
@end

NS_ASSUME_NONNULL_END

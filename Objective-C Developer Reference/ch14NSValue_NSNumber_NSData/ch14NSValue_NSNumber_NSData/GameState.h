//
//  GameState.h
//  ch14NSValue_NSNumber_NSData
//
//  Created by abel on 13-10-28.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

struct GameStateData{
    
    int version;
    BOOL isSoundsEnabled;
};
typedef  struct GameStateData gameStateData;

@interface GameState : NSObject
{
BOOL _isLoaded;
gameStateData _data;
    
}

+ (GameState *) sharedState;
- (BOOL)sychronized;

@end

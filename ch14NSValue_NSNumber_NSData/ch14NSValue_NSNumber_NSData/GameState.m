//
//  GameState.m
//  ch14NSValue_NSNumber_NSData
//
//  Created by abel on 13-10-28.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "GameState.h"

@implementation GameState

static GameState * _sharedState=nil;
+(GameState *)sharedState{
    
    if(!_sharedState){
        _sharedState=[[GameState alloc]init];
    }
    return _sharedState;
}

-(id)init{
    self=[super init];
    if(self){
        _isLoaded=NO;
        
    memset(& _data, 0, sizeof(_data));        _data.version=1;
    }
    return self;
}

-(BOOL)sychronized{
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSData *data = nil;
    if (_isLoaded) {
        // 写入设置到 defaults
        data = [NSData dataWithBytes:& _data length:sizeof(_data)];
        [prefs setValue:data forKey:@"gameState"];
        return [prefs synchronize];
    }
    
    // 从 defaults 读取设置
    data = [prefs dataForKey:@"gameState"];
    if (!data || [data length] != sizeof(_data)) return NO;
    [data getBytes:& _data length:sizeof(_data)];
    _isLoaded = YES;
    return YES;
}
@end

//
//  ConstantTest.m
//  3PreferLiteralSyntax
//
//  Created by abel on 15/3/15.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "ConstantTest.h"

NSString *const EOCStringConstant = @"Value";

NSString *const EOCLogManagerDidLoginNotification =
@"my notification test @^@";

@implementation ConstantTest

enum EOCConnectionState {
  Disconnected = 1,
    Connecting = 2,
    Connected = 3
};
//模拟 iOS UI framework
enum ENUMTest{
    test1 = 0,
    test2 =1 <<0,
    test3 = 1<<1,
    test4 = 1 <<2,
    test5 = 1<<5
};


enum EOCConnectionStateA : NSUInteger {
    EOCConnectionStateDisconnected,
    EOCConnectionStateConnecting,
    EOCConnectionStateConnected,
};

typedef NS_ENUM(NSUInteger, EOCConnectionStateB) {
    EOCConnectionStateBDisconnected,
    EOCConnectionStateBConnecting,
    EOCConnectionStateBConnected,
};


-(void)login{
    enum EOCConnectionState state = Disconnected;
    NSLog(@"state->%d",state);
    NSLog(@"login test here: %@",EOCLogManagerDidLoginNotification);
    
    enum ENUMTest test= test4;
        NSLog(@"test->%d",test);
    if(test & 4){
        NSLog(@"test");
    }
    
    enum EOCConnectionStateB currentState = EOCConnectionStateBConnecting;
    switch (currentState) {
        case EOCConnectionStateBConnected:
            NSLog(@"connected!");
            break;
        case EOCConnectionStateBConnecting:
            NSLog(@"connecting!");
            break;
        case EOCConnectionStateBDisconnected:
            NSLog(@"Disnected");
            
        default:
            break;
    }
    
}




@end

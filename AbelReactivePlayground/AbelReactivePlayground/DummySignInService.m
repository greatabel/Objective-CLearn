//
//  DummySignInService.m
//  AbelReactivePlayground
//
//  Created by abel on 15/3/14.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "DummySignInService.h"



@implementation DummySignInService

- (void)signInWithUsername:(NSString *)username password:(NSString *)password complete:(SignInResponse)completeBlock {
    
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        NSLog(@"u=%@ p=%@",username,password);
        BOOL success = [username isEqualToString:@"user"] && [password isEqualToString:@"password"];
        completeBlock(success);
    });
}

@end

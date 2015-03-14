//
//  DummySignInService.h
//  AbelReactivePlayground
//
//  Created by abel on 15/3/14.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^SignInResponse) (BOOL);

@interface DummySignInService : NSObject


- (void)signInWithUsername:(NSString *)username password:(NSString *)password complete:(SignInResponse)completeBlock;

@end

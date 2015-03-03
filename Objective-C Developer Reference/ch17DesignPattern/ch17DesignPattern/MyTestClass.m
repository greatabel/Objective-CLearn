//
//  MyTestClass.m
//  ch17DesignPattern
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "MyTestClass.h"

@implementation MyTestClass

+(id)sharedInstance
 {
    static MyTestClass *sharedManager;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedManager = [[MyTestClass alloc] init];
    });
    
    return sharedManager;
}
-(void)somePrint{
    NSLog(@"deallocing %p", self);
}
@end

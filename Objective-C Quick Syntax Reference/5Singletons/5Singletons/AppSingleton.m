//
//  AppSingleton.m
//  5Singletons
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "AppSingleton.h"

@implementation AppSingleton

static AppSingleton *singletonInstance = nil;

+(AppSingleton *)sharedInstance{
    
    @synchronized(self){
        if(singletonInstance == nil){
            singletonInstance = [[self alloc]init];
            NSLog(@"Building");
        }
        return(singletonInstance);
    }
    

}
@end

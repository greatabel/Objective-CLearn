//
//  MyTask.m
//  ch16MultiThread
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "MyTask.h"

@implementation MyTask

@synthesize operationId;

-(void)main{
    NSLog(@"Task %i run at here...",operationId);
    NSLog(@"haha");
     //[NSThread sleepForTimeInterval:1];
    NSLog(@"Task %i is finished.",operationId);
}
@end

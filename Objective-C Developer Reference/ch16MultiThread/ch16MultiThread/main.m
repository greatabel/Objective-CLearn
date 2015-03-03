//
//  main.m
//  ch16MultiThread
//
//  Created by abel on 13-10-28.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTask.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *marray = [NSMutableArray arrayWithCapacity:0];
        for (int i=0; i<=5; i++) {
            
            MyTask *operation = [[MyTask alloc] init];
            operation.operationId = i*10;
            [marray addObject:operation];
        }
        for (MyTask *op in marray) {
            if (op.operationId%20==0) {
                [op cancel];
            }
            else
            {
                [op start];
            }
        }
        //-----使用代码块
        NSOperationQueue *myOQ=[[NSOperationQueue alloc] init];
        NSBlockOperation *jtOperation = [NSBlockOperation blockOperationWithBlock:^{
            NSLog(@"here is something for jt");
        }];
        NSBlockOperation *clOperation = [NSBlockOperation blockOperationWithBlock:^{
            NSLog(@"oh is this going to work");
                                         }];
                                                                          
       [myOQ addOperation:jtOperation];
       [myOQ addOperation:clOperation];
        
        //queue
        NSLog(@"queue-----");
        NSOperationQueue * queue=[[NSOperationQueue alloc]init];
        
        int index=1;
        MyTask *task=[[MyTask alloc] init] ;
        task.operationId=index++;
        [queue addOperation:task];
        
        task=[[MyTask alloc] init] ;
        task.operationId=index++;
        
        [queue addOperation:task];
        [queue setSuspended:NO];
        [queue waitUntilAllOperationsAreFinished];

      NSLog(@"queue may do at other thread-----");
        
        
    }
    return 0;
}


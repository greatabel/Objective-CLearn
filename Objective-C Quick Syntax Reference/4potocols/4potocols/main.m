//
//  main.m
//  4potocols
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Project.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        Project *p = [[Project alloc]init];
        p.listOfTasks = [[NSMutableArray alloc]init];
        p.name = @"great abel";
        
        Task *t1 = [[Task alloc]init];
        t1.name = @"Choose menu1";
        [p.listOfTasks addObject:t1];
        t1.delegate = p;
        
        
        Task *t2 = [[Task alloc]init];
        t2.name = @"Choose menu2";
        [p.listOfTasks addObject:t2];
        t2.delegate = p;
        
        
        Task *t3 = [[Task alloc]init];
        t3.name = @"Choose menu3";
        [p.listOfTasks addObject:t3];
        t3.delegate = p;
        
        t3.done = YES;
        t1.done = NO;
        t2.done = YES;
        
    }
    return 0;
}

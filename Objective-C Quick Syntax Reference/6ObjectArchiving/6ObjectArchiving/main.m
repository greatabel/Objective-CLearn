//
//  main.m
//  6ObjectArchiving
//
//  Created by abel on 15/3/5.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"
#import "Task.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *file = @"/users/abel/Downloads/AbelProject/Objective-CLearn/Objective-C Quick Syntax Reference/6ObjectArchiving/6ObjectArchiving/project.dat";
        
        Project *p = [[Project alloc]init];
        p.listOfTasks = [[NSMutableArray alloc]init];
        p.name = @"great abel";
        
        Task *t1 = [[Task alloc]init];
        t1.name = @"Choose menu1";
        [p.listOfTasks addObject:t1];
      
        
        
        Task *t2 = [[Task alloc]init];
        t2.name = @"Choose menu2";
        [p.listOfTasks addObject:t2];
  
        
        
        Task *t3 = [[Task alloc]init];
        t3.name = @"Choose menu3";
        [p.listOfTasks addObject:t3];
       
        
        t3.done = YES;
        t1.done = NO;
        t2.done = YES;
        [NSKeyedArchiver archiveRootObject:p toFile:file];
        //when .dat is generated first time ,you can commit all code above
        NSLog(@"test------------>\n");
        

        

        
        Project *p2 = [NSKeyedUnarchiver unarchiveObjectWithFile:file];
        [p2 generateReport];
        
        
    }
    return 0;
}

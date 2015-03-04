//
//  Project.m
//  3Block
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Project.h"

@implementation Project

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    if( [keyPath isEqualToString:@"done"]){
        NSNumber *updatedStatus = [change objectForKey:@"new"];
        BOOL done = [updatedStatus boolValue];
        NSLog(@"Task '%@' is now %@",[object name], done? @"Done":@"In progress");
        
    }
}

-(void)dealloc{
    [self.listOfTasks enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [obj removeObserver:self
         
                 forKeyPath:@"done"];
    }];
    
    
}

-(void)generateReport{
    NSLog(@"Report for %@ Project",self.name);
    [self.listOfTasks enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [obj generateReport];
    }];
    
    
    NSLog(@"This is a report!");
    self.makeCustomReport(@"Customize here haha@^@");
    
}

@end

//
//  Task.m
//  4potocols
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Task.h"

@implementation Task

-(void)generateReport{
    NSLog(@"Task %@ is %@", self.name, self.done? @"Done":@"In progress");
    
}

BOOL _done;

-(void)setDone:(BOOL)done{
    _done = done;
    [self.delegate thisTask:self statusHasChangedToTHis:done];
}

-(BOOL)done{
    
    return _done;
}

@end

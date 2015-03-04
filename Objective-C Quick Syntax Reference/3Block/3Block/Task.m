//
//  Task.m
//  3Block
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Task.h"

@implementation Task

-(void)generateReport{
    NSLog(@"Task %@ is %@",self.name,self.done?@"Done":@"In Progress");
}


@end

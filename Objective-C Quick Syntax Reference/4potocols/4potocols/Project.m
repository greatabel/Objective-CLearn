//
//  Project.m
//  4potocols
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Project.h"

@implementation Project

-(void)thisTask:(Task *)task statusHasChangedToTHis:(BOOL)done{
    NSLog(@"Task '%@' is now %@",task.name, done? @"DONE" :@"In progress");
}
@end

//
//  Project.h
//  4potocols
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Task.h"
@interface Project : NSObject<TaskDelegate>

@property(strong) NSString *name;
@property(strong) NSMutableArray *listOfTasks;

-(void)generateReport;


@end

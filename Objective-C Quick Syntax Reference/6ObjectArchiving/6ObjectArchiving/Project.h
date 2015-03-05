//
//  Project.h
//  6ObjectArchiving
//
//  Created by abel on 15/3/5.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject<NSCoding>

@property(strong) NSString *name;
@property(strong) NSMutableArray *listOfTasks;

-(void)generateReport;


@end

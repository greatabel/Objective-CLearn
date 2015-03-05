//
//  Task.h
//  6ObjectArchiving
//
//  Created by abel on 15/3/5.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject<NSCoding>

@property(strong) NSString *name;
@property(assign) BOOL done;

-(void)generateReport;

@end

//
//  Task.h
//  3Block
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property(strong) NSString *name;
@property(assign) BOOL done;

-(void)generateReport;

@end

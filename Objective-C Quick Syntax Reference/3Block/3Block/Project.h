//
//  Project.h
//  3Block
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject

-(void)generateReport;

//need (copy)
@property (copy) void (^makeCustomReport)(NSString *title);

@end

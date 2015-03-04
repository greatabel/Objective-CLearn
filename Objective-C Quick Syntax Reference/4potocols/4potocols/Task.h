//
//  Task.h
//  4potocols
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

// @class gives you a way to referencing a class withou the interface
@class Task;



@protocol TaskDelegate <NSObject>




@optional

-(void)thisTask:(Task *)task statusHasChangedToTHis:(BOOL)done;

@end




@interface Task : NSObject
@property(strong) NSString *name;
@property(assign) BOOL done;

@property(assign) id<TaskDelegate> delegate;

-(void)generateReport;

@end

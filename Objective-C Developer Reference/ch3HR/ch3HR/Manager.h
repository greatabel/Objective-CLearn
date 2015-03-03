//
//  Manager.h
//  ch3HR
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//


#import <Cocoa/Cocoa.h>
#import "Employee.h"

@interface Manager : Employee
{
    NSMutableArray *reports;;
}
@property (nonatomic,retain) NSMutableArray * reports;
-(void)addReport:(Employee *)inEmployee;

@end

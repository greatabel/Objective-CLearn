//
//  Project.m
//  DefiningClass
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Project.h"

@implementation Project


-(void)generateReport{
    
    NSLog(@"This is a report");
}

-(void)generateReportAndAddThisString:(NSString *)string andThenAddThisDate:(NSDate *)date{
    
    [self generateReport];
    NSLog(@"%@",string);
    NSLog(@"haha date is :%@",date);
}

-(void)generateAnotherReport{
    NSLog(@"#Another report!");
}

@end



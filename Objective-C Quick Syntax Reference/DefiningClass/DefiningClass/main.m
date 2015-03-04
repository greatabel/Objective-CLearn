//
//  main.m
//  DefiningClass
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

#import "SpecialProject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Project *ps = [[Project alloc] init];
        [ps generateReport];
        // 获取当前日期
        NSDate *date = [NSDate date];
        [ps generateReportAndAddThisString:@"test" andThenAddThisDate:date];
        
 
        NSTimeZone *zone = [NSTimeZone systemTimeZone];
        
        NSInteger interval = [zone secondsFromGMTForDate: date];
        
        NSDate *localDate = [date  dateByAddingTimeInterval: interval];
        
        // 打印结果 正确当前时间 localDate = 2013-08-16 17:01:04 +0000
        NSLog(@"正确当前时间 localDate = %@",localDate);
        [ps generateReportAndAddThisString:@"本地测试" andThenAddThisDate:localDate];
        
        [ps generateAnotherReport];
        
        [Project printTimeStamp];
        
        SpecialProject *sp = [[SpecialProject alloc]init];

        
        [sp generateSpecialReport];
        [sp generateReport];
        NSString *templog = sp->log3;
        NSLog(@"temp###=%@",templog);
        
        Project *p = [[Project alloc]initWithName:@"ThisNewCategory"];
        NSLog(@"p.name = %@",p.name);
        
    }
    return 0;
}

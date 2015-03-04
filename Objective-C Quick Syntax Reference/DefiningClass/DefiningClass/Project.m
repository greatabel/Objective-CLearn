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
    log3 = @"in genereateReport";
    NSLog(@"This is a report");
}

-(void)generateReportAndAddThisString:(NSString *)string andThenAddThisDate:(NSDate *)date{
    
    [self generateReport];
    NSLog(@"%@",string);
    NSLog(@"haha date is :%@",date);
    log = @" test log";
    counter++;
}

-(void)generateAnotherReport{
    NSLog(@"#Another report ,counter:%d, log:%@",counter,log);
}

+(void)printTimeStamp{
    NSLog(@"ClassMethod Demo Timestamp: %@",[NSDate date]);
}

@end


// category implementation
@implementation Project (ProjectExtension)

-(id)initWithName:(NSString *)aName{
    
    self = [super init];
    if(self){
       
        NSString *errorString = @"#initWithName test.";
        NSString *all = [aName stringByAppendingString:errorString];
        self.name = all ;
    }
    return self;
}

@end







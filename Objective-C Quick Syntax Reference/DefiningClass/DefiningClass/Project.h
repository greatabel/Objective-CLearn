//
//  Project.h
//  DefiningClass
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject

@property(strong) NSString *name;


//method
-(void)generateReport ;

-(void)generateReportAndAddThisString:(NSString *)string andThenAddThisDate:(NSDate *)date ;


@end

@interface Project ()

-(void)generateAnotherReport;

@end

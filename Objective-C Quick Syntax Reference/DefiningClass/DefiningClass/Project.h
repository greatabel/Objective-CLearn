//
//  Project.h
//  DefiningClass
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject{

    @private NSString *log1;
    @protected NSString *log2;
    @public NSString *log3;
}

@property(strong) NSString *name;


//method
-(void)generateReport ;

-(void)generateReportAndAddThisString:(NSString *)string andThenAddThisDate:(NSDate *)date ;

//class name
+(void)printTimeStamp;

@end




@interface Project ()
{
    
    int counter;
    NSString *log;
}

@property(strong) NSArray *listOfTasks;

-(void)generateAnotherReport;

@end


// category
@interface Project (ProjectExtension)

-(id)initWithName:(NSString *)aName;

@end
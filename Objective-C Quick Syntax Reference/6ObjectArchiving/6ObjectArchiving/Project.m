//
//  Project.m
//  6ObjectArchiving
//
//  Created by abel on 15/3/5.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Project.h"

@implementation Project

-(void)generateReport{
    NSLog(@"Report for %@ Project",self.name);
    [self.listOfTasks enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [obj generateReport];
    }];
    
}

-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:self.name forKey:@"namekey"];
    [encoder encodeObject:self.listOfTasks forKey:@"listOfTaskskey"];
}

-(id)initWithCoder:(NSCoder *)decoder{
    self = [super init];
    if(self){
        self.name = [decoder decodeObjectForKey:@"namekey"];
        self.listOfTasks = [decoder decodeObjectForKey:@"listOfTaskskey"];
        
    }
    return self;
}

@end

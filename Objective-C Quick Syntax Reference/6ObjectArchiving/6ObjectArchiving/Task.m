//
//  Task.m
//  6ObjectArchiving
//
//  Created by abel on 15/3/5.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Task.h"

@implementation Task

-(void)generateReport{
    NSLog(@"Task %@ is %@",self.name,self.done ? @"Done":@"In progress");
    
}

-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:self.name forKey:@"namekey"];
    [encoder encodeBool:self.done forKey:@"donekey"];
}

-(id)initWithCoder:(NSCoder *)decoder{
    self =[super init];
    if(self){
        
        self.name = [decoder decodeObjectForKey:@"namekey"];
        self.done =[decoder decodeBoolForKey:@"donekey"];
    }
    return self;
}



@end

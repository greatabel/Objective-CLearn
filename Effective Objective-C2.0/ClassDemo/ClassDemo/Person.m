//
//  Person.m
//  ClassDemo
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Person.h"

//category 扩展
@interface Person ()

- (BOOL) canVote;

@end

@implementation Person

@synthesize name;



+(void)testClassMethod{
    NSLog(@"in testClassMethod");
}


- (void) setAge:(NSUInteger)theAge{
    age = theAge;
}

- (NSUInteger)age{
    return age;
}

- (id)init{
    if(self = [super init]){
        age  = 0;
        name = @"";
    }
    return self;
}

- (BOOL)canVote{
    return age >= 18;
}

-(void)vote{
    NSLog(@"in vote");
}

@end

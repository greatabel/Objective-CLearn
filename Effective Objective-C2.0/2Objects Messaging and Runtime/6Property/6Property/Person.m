//
//  Person.m
//  6Property
//
//  Created by abel on 15/3/15.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Person.h"

@implementation EOCPerson

//演示默认生成的 _firstName _lastName 被替换成_myFristName _myLastName
@synthesize firstName = _myFirstName;
@synthesize lastName = _myLastName;

-(void) testMethod{
    NSLog(@"in testMethod _myFirstName demo =%@",_myFirstName);
}

@end

//
//  main.m
//  6Property
//
//  Created by abel on 15/3/15.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EOCPerson  *p = [[EOCPerson alloc]init];
        p.firstName = @"test";
        NSLog(@"%@",p.firstName);
        
        EOCPerson *aPerson = [EOCPerson new];
        
        aPerson.firstName = @"Bob";
        NSLog(@"%@",aPerson.firstName);
        //same as
        [aPerson setFirstName:@"Bob1"];
        NSLog(@"%@",aPerson.firstName);
        
        [aPerson testMethod];
        
    }
    return 0;
}

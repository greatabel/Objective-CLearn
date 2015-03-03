//
//  main.m
//  ch3Object
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Foo.h"
#import "SomeClass.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        Foo *object;
        object = [[Foo alloc]init];
        object.someMethod;
        
        
        
        SomeClass *ptr = [[SomeClass alloc] init];
        
        [ptr setX:99];
        [ptr printInstanceVars];
        
        [ptr setStr:@"Testing"];
        [ptr printInstanceVars];
        
        [ptr setDate:[NSDate date]];
        [ptr printInstanceVars];
        
       
    }
    return 0;
}


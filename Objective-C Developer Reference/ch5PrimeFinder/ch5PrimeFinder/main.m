//
//  main.m
//  ch5PrimeFinder
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrimeFinder.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        PrimeFinder *finder=[[PrimeFinder alloc]initWithMaxNumber:150000];
        [finder start];
         
        
        // insert code here...
        NSLog(@"Hello, World! Found all the primes in %fs",[finder elapsedTime]);
        
        
    }
    return 0;
}


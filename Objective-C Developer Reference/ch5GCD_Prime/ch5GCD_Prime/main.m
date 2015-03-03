//
//  main.m
//  ch5GCD_Prime
//
//  Created by abel on 13-10-25.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrimeFinder.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
        
        PrimeFinder *finder = [[PrimeFinder alloc] initWithMaxNumber:150000];
        [finder start];
        
        // uncomment if you want to print out all the times.
            for(NSNumber *number in [finder primes])
            {
               NSLog(@"Found prime: %@", number);
            }
        
        NSLog(@"Found all the primes in %fs", [finder elapsedTime]);
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


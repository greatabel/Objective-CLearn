//
//  PrimeFinder.m
//  ch5GCD_Prime
//
//  Created by abel on 13-10-25.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "PrimeFinder.h"

@implementation PrimeFinder

@synthesize startedDate;
@synthesize endedDate;
@synthesize primes;
@dynamic elapsedTime;

-(void)dealloc;
{
    [self setPrimes:nil];
    [self setStartedDate:nil];
    [self setEndedDate:nil];
   }

-(id)initWithMaxNumber:(NSInteger)inMaxNumber
{
    if(self = [super init])
    {
        maxNumber = inMaxNumber;
    }
    return self;
    
}

-(void)start
{
    [self setStartedDate:[NSDate date]];
    
    __block NSMutableArray *result = [NSMutableArray array];
    
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(0, 0);
    dispatch_group_t group = dispatch_group_create();
    for(NSInteger number = 2; number <= maxNumber; ++number)
    {
        dispatch_block_t isPrime = ^
        {
            for(NSInteger n = 2; n < number; ++n)
                if((number % n) == 0)
                    return;
            NSLog(@"%ld",(long)number);
            @synchronized(result)
            {
                [result addObject:[NSNumber numberWithInteger:number]];
            }
        };
        
        dispatch_group_async(group, globalQueue, isPrime);
    }
    
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    
    [self setEndedDate:[NSDate date]];
}

-(NSTimeInterval)elapsedTime
{
    return [endedDate timeIntervalSinceDate:startedDate];
}


@end

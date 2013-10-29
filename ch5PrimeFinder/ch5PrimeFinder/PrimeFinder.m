//
//  PrimeFinder.m
//  ch5PrimeFinder
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "PrimeFinder.h"

@implementation PrimeFinder

@synthesize startedDate;
@synthesize endDate;
@synthesize primes;
@synthesize elapsedTime;

-(id)initWithMaxNumber:(NSInteger)inMaxNumber{
    if(self=[super init]){
        maxNumber=inMaxNumber;
    }
    return self;
}

-(void)start{
    [self setStartedDate:[NSDate date]];
    
    __block NSMutableArray *result =[NSMutableArray array];
    
    dispatch_queue_t globalQueue=dispatch_get_global_queue(0, 0);
    dispatch_group_t group = dispatch_group_create();
    for(NSInteger number=2;number<=maxNumber;++number){
        
        dispatch_block_t isPrime=^{
          
            for(NSInteger n=2;n<number;++n)
                if((number%n)==0)
                    return;
            NSLog(@" %ld",(long)number);
            @synchronized(result){
                [result addObject:[NSNumber numberWithInteger:number]];
            }
        };
        dispatch_group_async(group, globalQueue, isPrime);
    }
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    [self setEndDate:[NSDate date]];
}


-(NSTimeInterval)elapsedTime{
    return [endDate timeIntervalSinceDate:startedDate];
}






@end

//
//  PrimeFinder.h
//  ch5GCD_Prime
//
//  Created by abel on 13-10-25.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrimeFinder : NSObject
{
    NSInteger maxNumber;
    NSDate *startedDate;
    NSDate *endedDate;
    NSMutableArray *primes;
}
@property (retain, nonatomic) NSMutableArray * primes;
@property (retain, nonatomic) NSDate * startedDate;
@property (retain, nonatomic) NSDate * endedDate;
@property (readonly) NSTimeInterval elapsedTime;
-(id)initWithMaxNumber:(NSInteger)inMaxNumber;
-(void)start;
@end

//
//  PrimeFinder.h
//  ch5PrimeFinder
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
@interface PrimeFinder : NSObject
{

    NSInteger maxNumber;
    NSDate *startedDate;
    NSDate *endDate;
    NSMutableArray *primes;
}
@property (retain,nonatomic) NSMutableArray *primes;
@property (retain,nonatomic) NSDate *startedDate;
@property (retain,nonatomic) NSDate *endDate;
@property (readonly) NSTimeInterval elapsedTime;
-(id)initWithMaxNumber:(NSInteger)inMaxNumber;
-(void)start;

@end

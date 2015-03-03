//
//  SomeClass.h
//  ch3Object
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SomeClass : NSObject
{
    NSString *str;
    NSDate *date;
    int x;
}

//Getters
-(int)x;
-(NSString *)str;
-(NSDate *)date;

//setters
-(void)setX:(int)input;
-(void)setStr:(NSString *)input;
-(void)setDate:(NSDate *)input;

//other
-(void)printInstanceVars;
-(void)dealloc;

@end

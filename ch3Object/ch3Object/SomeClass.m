//
//  SomeClass.m
//  ch3Object
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "SomeClass.h"

@implementation SomeClass

//getter methods

-(int) x{
    
    return x;
}

-(NSString *)str{
    return str;
}

-(NSDate *)date{
    return date;
}

//setter
-(void) setX:(int)input{
    x=input;
}

-(void)setStr:(NSString *)input{
    
    str=input;
}

-(void)setDate:(NSDate *)input{
    date=input;
}

-(void)printInstanceVars{
    NSLog(@"\n x: %d\n str: %@\n date: %@\n", x, str, date);
}
@end

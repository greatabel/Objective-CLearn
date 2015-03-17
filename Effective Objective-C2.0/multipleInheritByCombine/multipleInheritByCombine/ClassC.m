//
//  ClassC.m
//  multipleInheritByCombine
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "ClassC.h"
#import "ClassA.h"
#import "ClassB.h"

@implementation ClassC


-(id)initWithA:(ClassA *)A b:(ClassB *)B{
    
    a=A;
    
    b=B;
    return self;
}

-(void)methodA{
    NSLog(@"in C methodA");
    [a methodA];
}
-(void)methodB{
     NSLog(@"in C methodB");
    [b methodB];
}

@end

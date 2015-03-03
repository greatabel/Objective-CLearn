//
//  Foo.m
//  ch3Object
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Foo.h"

@implementation Foo

@synthesize someVariable;
@synthesize someOtherVariable;

-(void)someMethod{
    
    NSLog(@"some method invoked!");
}

-(BOOL)someOtherMethodWithArg:(NSString *)param andAnotherArg:(int)param2
{
    
    if(2>1)
        return YES;
    return NO;
}

+(id)foowithArray:(NSMutableArray *)inArray{
    
    NSLog(@"test in m");
}

@end

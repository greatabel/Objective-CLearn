//
//  TestClass.m
//  ch17DesignPattern_Delegate
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "TestClass.h"
#import "Printer.h"
@implementation TestClass

-(void) finishPrint
{
    NSLog(@"In TestClass Print is finished");
}

-(id)init{
    @autoreleasepool {
        self=[super init];
        Printer *myPrinter=[[Printer alloc]init];
        myPrinter.delegate=self;
        
        [myPrinter printData];
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
}

@end

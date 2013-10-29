//
//  main.m
//  ch17DesignPattern_Delegate
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestClass.h"

void finishPrint()
{
    NSLog(@"In Main Print is finished");
}
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        TestClass *t=[[TestClass alloc]init];
        
    }
    return 0;
}


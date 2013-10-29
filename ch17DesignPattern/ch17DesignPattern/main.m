//
//  main.m
//  ch17DesignPattern
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTestClass.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MyTestClass *testClass=[MyTestClass sharedInstance];
        MyTestClass *testClassA=[MyTestClass sharedInstance];
        
        [testClass somePrint];
        [testClassA somePrint];
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


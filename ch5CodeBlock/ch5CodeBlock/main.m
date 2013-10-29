//
//  main.m
//  ch5CodeBlock
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "testDemo.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //simple code block
        void (^myBlock)(NSString *x);
        myBlock=^(NSString *x){
            NSLog(@"ha%@",x);
        };
        
        void (^anotherBlock)(NSString *x)=^(NSString *x){NSLog(@"%@",x);};
        
        void (^aVoidBlock)()=^{ NSLog(@"test");};
        
       
        
        // useCodeBlock(myBlock);
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        testDemo *test=[[testDemo alloc] init];
        [test callSimpleBlock];
        [test callTrimBlock];
        
        
        
        
        
        
        
    }
    return 0;
}


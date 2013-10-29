//
//  main.m
//  ch9Micro
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#define THE_KEY @"My_IMPORTANT_DATA"

#define DEBUGGING 1

#define LOG_LINE NSLog(@"Abel says>%s:%ld",__FILE__,__LINE__);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //old way
        NSMutableString *someValue=[NSMutableString stringWithString:@"footbar"];
        [[NSUserDefaults standardUserDefaults] setObject:someValue forKey:@"My_Important_Data"];
        
        NSString *theValue=[[NSUserDefaults standardUserDefaults]stringForKey:@"My_Important_Data"];
        
        NSMutableString *theValue2rd=[NSMutableString stringWithString:@"footbar"];
        // insert code here...
        NSLog(@"Hello, World!%@",theValue);
        [theValue2rd setString:@"haha"];
        NSLog(@"Hello, World!%@",theValue2rd);
        
        [[NSUserDefaults standardUserDefaults] setObject:theValue2rd forKey:THE_KEY];
        [theValue2rd setString: [[NSUserDefaults standardUserDefaults]stringForKey:THE_KEY]];
        NSLog(@"Hello, World!%@",theValue2rd);
        
#ifdef DEBUGGING
        NSLog(@"Debugging...");
#else
        NSLOg(@"Not in debuging...");
#endif
        
        LOG_LINE
        NSLog(@"%s hah %s",__DATE__,__TIME__);
        LOG_LINE
        
    }
    return 0;
}


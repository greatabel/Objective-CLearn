//
//  main.m
//  ch8extendExistingClass
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableString+GUID.h"
#import "Foo.h"
#import "Foo+privateMethod.h"
#import "NSObject+NSMutableDictionary_SortedKeys.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *aString =[NSMutableString string];
        [aString appendGuid];
        NSLog(@"The guid:%@",aString);
        // insert code here...
        for(int i=0;i<20;i++)
            printf("#");
        NSLog(@"Another example!");
        
        NSMutableString *bString=[NSMutableString stringWithGuid];
        NSLog(@"The new guid is:%@",bString);
        
        //other example
      
        Foo *foo=[[Foo alloc]init];
        //如果没有#import "Foo+privateMethod.h"，程序就找不到privateMethod
        [foo somePrivateMethod];
        
        for(int i=0;i<20;i++)
            printf("#");
        
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setObject:@"two" forKey:@"b"];
        [dict setObject:@"three" forKey:@"c"];
        [dict setObject:@"one" forKey:@"a"];
        
        NSLog(@"%@", [dict allKeys]);
        [dict generateSortedKeys];
        NSLog(@"%@", [dict sortedKeys]);
        [dict dropSortedKeys];
    }
    return 0;
}


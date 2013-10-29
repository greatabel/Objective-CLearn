//
//  main.m
//  ch4Memory
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sample.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
        Sample *_sample = [Sample new]; //构造函数被调用了！当前引用计数:1
        NSLog(@"_sample.retainCount=%d",[_sample retainCount]);//1
        
        [_sample retain];
        NSLog(@"_sample.retainCount=%d",[_sample retainCount]);//2
        
        [_sample retain];
        NSLog(@"_sample.retainCount=%d",[_sample retainCount]);//3
        
        [_sample release];
        NSLog(@"_sample.retainCount=%d",[_sample retainCount]);//2
        
        [_sample release];
        NSLog(@"_sample.retainCount=%d",[_sample retainCount]);//1
        
        [_sample release];//析构函数将要执行...，当前引用计数:1
        NSLog(@"_sample.retainCount=%d",[_sample retainCount]);//1，注：即便是在析构函数执行后，如果立即再次引用对象的retainCount，仍然返回1,但以后不管再试图引用该对象的任何属性或方法，都将报错
        NSLog(@"_sample.retainCount=%d",[_sample retainCount]);//对象被释放之后，如果再尝试引用该对象的任何其它方法，则报错
        //[_sample retain];//同上，会报错
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


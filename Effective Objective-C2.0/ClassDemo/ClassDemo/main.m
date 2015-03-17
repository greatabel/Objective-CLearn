//
//  main.m
//  ClassDemo
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Goods.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [Person testClassMethod];
        
        Person *p = [[Person alloc]init];
        [p age];
        [p vote];
        [p testRetainSet:@"tester"];
        
        
        //------http://blog.csdn.net/oktears/article/details/41042327
        //当调用alloc或者new创建一个OC对象时，引用计数+1
        Goods* pGoods = [[Goods alloc] init];
        //输出: 1
        NSLog(@"retainCount=%lu", (unsigned long)[pGoods retainCount]);
        
        //调用retain时引用计数+1
        [pGoods retain];
        //输出: 2
        NSLog(@"retainCount=%lu", (unsigned long)[pGoods retainCount]);
        
        //调用release时引用计数-1
        [pGoods release];
        //输出: 1
        NSLog(@"retainCount=%lu", (unsigned long)[pGoods retainCount]);
        
        //调用release时引用计数-1，此时retainCount为0，内存将被释放，自动调用realloc来释放资源和内存
        [pGoods release];
        
    }
    return 0;
}

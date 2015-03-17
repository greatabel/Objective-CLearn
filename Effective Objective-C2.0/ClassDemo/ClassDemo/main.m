//
//  main.m
//  ClassDemo
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [Person testClassMethod];
        
        Person *p = [[Person alloc]init];
        [p age];
        [p vote];
    }
    return 0;
}

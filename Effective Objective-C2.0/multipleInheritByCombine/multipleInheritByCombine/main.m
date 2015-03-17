//
//  main.m
//  multipleInheritByCombine
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassC.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         http://stackoverflow.com/questions/4192203/objective-c-multiple-inheritance
         http://www.tutorialspoint.com/objective_c/objective_c_inheritance.htm
         http://blog.csdn.net/dqjyong/article/details/7671709
         */
        ClassA *A =[[ClassA alloc]init];
        ClassB *B =[[ClassB alloc]init];
        
        ClassC *C = [[ClassC alloc]init];
        [C initWithA:A b:B];
        [C methodA];
        [C methodB];
        
    }
    return 0;
}

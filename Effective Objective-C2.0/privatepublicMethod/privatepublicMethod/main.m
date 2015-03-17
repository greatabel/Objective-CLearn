//
//  main.m
//  privatepublicMethod
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "interfaceMyClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //http://www.cnblogs.com/gugupluto/p/3450838.html
        
    interfaceMyClass *p = [[interfaceMyClass alloc]init];
        [p myPublicMethod];
        [p IcanUseTheprivateMethod];
         //如果调用没有在头文件的，用上面的机制，可以实现类似其他语言中“私有函数”的效果，但并不能完全保证这个函数是私有的。
        [p performSelector:@selector(myPrivateMethod)];
        [p performSelector:@selector(privateMethod2)];
    }
    return 0;
}

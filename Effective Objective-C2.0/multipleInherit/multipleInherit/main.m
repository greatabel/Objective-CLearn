//
//  main.m
//  multipleInherit
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"
#import "Doctor.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //http://blog.csdn.net/yiyaaixuexi/article/details/8970734
        //声明方法2 ———— 导入头文件、调用时强转类型
        Teacher *t = [[Teacher alloc]init];
        [(Doctor *)t operate];
    }
    return 0;
}

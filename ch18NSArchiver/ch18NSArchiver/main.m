//
//  main.m
//  ch18NSArchiver
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //=================NSKeyedArchiver========================
        
        NSString *saveStr1 = @ "我是" ;
        
        NSString *saveStr2 = @ "数据" ;
        
        NSArray *array = [NSArray arrayWithObjects:saveStr1, saveStr2, nil];
        
        //----Save
        
        //这一句是将路径和文件名合成文件完整路径
        
        NSString *Path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        
        NSString *filename = [Path stringByAppendingPathComponent:@
                              "saveDatatest" ];
        NSLog(filename);
        [NSKeyedArchiver archiveRootObject:array toFile:filename];
        
        //用于测试是否已经保存了数据
        
        saveStr1 = @ "hhhhhhiiii" ;
        
        saveStr2 =@ "mmmmmmiiii" ;
        
        //----Load
        
        array = [NSKeyedUnarchiver unarchiveObjectWithFile: filename];
        
        saveStr1 = [array objectAtIndex:0];  
        
        saveStr2 = [array objectAtIndex:1];  
        
        NSLog(@ "str:%@" ,saveStr1);
        
        NSLog(@ "astr:%@" ,saveStr2);

        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


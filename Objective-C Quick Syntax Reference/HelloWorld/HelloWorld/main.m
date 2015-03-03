//
//  main.m
//  HelloWorld
//
//  Created by abel on 15/3/3.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
     //自动释放池存储于内存中的栈中遵循"先进后出"原则
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World! Abel is going over Objective-C skill for job");
        
        //type http://stackoverflow.com/questions/16075559/why-does-an-nsinteger-variable-have-to-be-casted-to-long-when-used-as-a-format-a
        
        NSUInteger intVal = 10;
        int iInt1 = (int)intVal;
        NSLog(@"value : %lu %d", (unsigned long)intVal, iInt1);
        
        NSUInteger numberOfPeople;
        numberOfPeople = 100;
        NSLog(@"The number of people is %lu", (unsigned long)numberOfPeople);
        
        
        //Integer types
        NSLog(@"NSUIntegerMax is %lu",NSUIntegerMax);
        
        //boolean
        BOOL success = YES;
        NSLog(@"success is %i", success);
        
        NSLog(@"success is %@",(success? @"YES":@"NO"));
    

        //float
        float percent = 33.33;
        NSLog(@"percent is %.5f", percent);
        
        //-----object--
        NSObject *object;
        object = [[NSObject alloc]init];
        
        NSURL *url = [NSURL URLWithString:@"https://github.com/greatabel"];
        NSURL *uuu = [[NSURL alloc] initWithString:@"https://www.douban.com"];
        
        NSDate *today = [NSDate date];
        NSObject *object1 = [NSObject new];
        
        NSLog(@"object=%@",object);
        
        NSLog(@"website = %@",url);
        
        NSLog(@"today = %@",today);
        
    
 
        //获取应用沙盒根路径
        NSString *dirHome=NSHomeDirectory();
        NSLog(@"app_home: %@",dirHome);
        
        //获取Documents目录路径
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSLog(@"app_home_doc: %@",documentsDirectory);
        
        //获取Library目录
        NSArray *pathsL = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSString *libraryDirectory = [pathsL objectAtIndex:0];
        NSLog(@"app_home_lib: %@",libraryDirectory);
        
        //获取Cache目录
        NSArray *cacPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        NSString *cachePath = [cacPath objectAtIndex:0];
        NSLog(@"app_home_lib_cache: %@",cachePath);
        
        //获取Tmp目录
        //[NSHomeDirectory() stringByAppendingPathComponent:@"tmp"];
        NSString *tmpDirectory = NSTemporaryDirectory();
        NSLog(@"app_home_tmp: %@",tmpDirectory);
        
        //创建文件夹：
        NSString *dirName = @"test";
        NSString *imageDir = [NSString stringWithFormat:@"%@/Caches/%@", NSHomeDirectory(), dirName];
        BOOL isDir = NO;
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        BOOL existed = [fileManager fileExistsAtPath:imageDir isDirectory:&isDir];
        if ( !(isDir == YES && existed == YES) )
        {
            [fileManager
             createDirectoryAtPath:imageDir 
             withIntermediateDirectories:YES 
             attributes:nil error:nil];
        }
        
        //删除文件夹及文件级内的文件：
        NSString *imageDir_D = [NSString stringWithFormat:@"%@/Caches/%@", NSHomeDirectory(), dirName];
        NSFileManager *fileManager_D = [NSFileManager defaultManager];
        [fileManager_D
         removeItemAtPath:imageDir_D error:nil];
        
    }
    return 0;
}

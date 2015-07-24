//
//  main.m
//  1FamiliarYourselfWithOCRoot
//
//  Created by 万畅 on 15/7/24.
//  Copyright (c) 2015年 万畅. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString* s = @"Abel say hello";
        NSString* s2 = [s uppercaseString];
        NSLog(@"%@ | %@",s,s2);
        NSString *s3 = s;
        NSLog(@"s3=%@, %d, %@", s3,(s==s3) ,(s==s3 ? @"YES":@"NO"));
    }
    return 0;
}

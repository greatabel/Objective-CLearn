//
//  main.m
//  2MinimizeImportingHeadersInHeaders
//
//  Created by 万畅 on 15/7/25.
//  Copyright (c) 2015年 万畅. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCPerson.h"
#import "EOCEmployer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        EOCPerson *p = [[EOCPerson alloc]init];
        p.firstName = @"Great";
        p.lastName = @"Abel";
        [p Show:p.firstName :p.lastName];
        
        EOCEmployer *e = [[EOCEmployer alloc]init];
        [e addEmployee:p];
        [e removeEmployee:p];
        
        
    }
    return 0;
}

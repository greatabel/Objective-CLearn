//
//  testDemo.m
//  ch5CodeBlock
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "testDemo.h"

@implementation testDemo

void(^simpleBlock)(NSString *) =^(NSString *paramString){
    NSLog(@"haha%@",paramString);
};

-(void) callSimpleBlock{
    simpleBlock(@"test simple block");
}

NSString *(^trimString)(NSString *) = ^(NSString *inputString){
    NSString *result =[inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return result;
};

NSString *(^trimWithOtherBlock)(NSString *)=^(NSString *inputString){
    return trimString(inputString);
};

-(void) callTrimBlock{
    NSString *trimmedString = trimWithOtherBlock(@" test trim block");
    NSLog(@" trim string =%@",trimmedString);
}

@end

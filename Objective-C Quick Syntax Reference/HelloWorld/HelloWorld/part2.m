//
//  part2.m
//  HelloWorld
//
//  Created by abel on 15/3/3.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "part2.h"

@implementation part2

-(void)someMethod{
    NSLog(@"\n\n\n test in someMethod:NSString");
    
    NSString *firstName = @"great";
    NSString *lastName = @"abel";
    
    NSString *name = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
    NSLog(@"name: %@",name);
    
    NSString *fileName = @"/Users/abel/Downloads/AbelProject/Objective-CLearn/Objective-C Quick Syntax Reference/HelloWorld/HelloWorld/test";
    NSString *fileContents = [NSString
                              stringWithContentsOfFile:fileName encoding:NSStringEncodingConversionAllowLossy error:nil];
    NSLog(@"fileContents: %@",fileContents);
    
    NSLog(@"NSMutableString:");
    NSMutableString *alpha = [NSMutableString stringWithString:@"A Test"];
    [alpha insertString:@"B" atIndex:[alpha length]];
    NSLog(@"NSMutableString:%@",alpha);
    
    [alpha appendString:@"CEnd"];
    
    NSRange range;
    range.location = 1;
    range.length = 5;
    [alpha deleteCharactersInRange:range];
    NSLog(@"NSMutableString 1:%@",alpha);
    
    //find and replace
    range.location = 0;
    range.length = 2;
    [alpha replaceOccurrencesOfString:@"AB" withString:@"WWW" options:NSLiteralSearch range:range];
    NSLog(@"NSMutableString 2:%@",alpha);
    
        NSLog(@"\n\n\n test in someMethod:NSNumber");
    
}
@end

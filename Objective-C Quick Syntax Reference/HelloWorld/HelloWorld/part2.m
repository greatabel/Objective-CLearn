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
    NSNumber *num1 = @1;
    NSNumber *num2 = @2.22;
    
    NSNumber *num3 = [NSNumber numberWithInteger:3];
    NSNumber *num4 = [NSNumber numberWithFloat:4.444];
    
    float result = [num1 floatValue]+[num2 floatValue];
    NSLog(@"result=%.3f",result);
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    NSLog(@"Formatted num2= %@", [formatter stringFromNumber:num2]);
    
    //convert string to number
    NSNumberFormatter *formatter1 = [[NSNumberFormatter alloc] init];
    [formatter1 setLocale:[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"]];
    //http://stackoverflow.com/questions/22413605/nsnumberformatter-numberfromstring-decimal-number
    formatter1.numberStyle = NSNumberFormatterSpellOutStyle;
    NSNumber *num5 = [formatter1 numberFromString:@"one point five six"];
    
    NSString *numStr = [NSString stringWithFormat:@"%@",num5];
    NSLog(@"%@",numStr);

    //---NSArray
    NSArray *numbers = @[@-1,@-20,@30,@410,@5222];
    NSArray *letter =@[@"Abel",@"Great",@"test"];
    NSNumber *mynum = [numbers objectAtIndex:1];
    NSNumber *lastNum = [numbers lastObject];
    
    NSUInteger index = [numbers indexOfObject:mynum];
    
    
    
    
    
    
    
    
    
    
    
    
    
}
@end

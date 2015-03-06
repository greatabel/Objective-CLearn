//
//  main.m
//  ch2Calculator
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MathOperations.h"

BOOL isAnOperator(const char value){
    return ((value=='+') ||(value=='-')||(value=='*')||(value=='/'));
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        argv[1]="1 + 2";
        double result=0;
        char operator='\0';
        NSString *equation = [NSString stringWithUTF8String:argv[1]];
        NSArray *eqParts = [equation
                            componentsSeparatedByCharactersInSet:
                            [NSCharacterSet whitespaceCharacterSet]];
        
        NSLog( @"eqParts:%@", eqParts );
        NSUInteger *mycount = [eqParts count];
        NSLog(@"count=%lu",mycount);
        for(int i=0;i<mycount ;i++){
            
            NSString *argString =[eqParts objectAtIndex:i];
            NSLog(@"%d:%@",i,argString);
            char firstChar =[argString characterAtIndex:0];
            NSLog(@"fristchar is %c",firstChar);
            if(isAnOperator(firstChar))
            {
                operator=firstChar;
                NSLog(@"operator is %c",operator);
                continue;
            }
            double newValue=[argString doubleValue];
            NSLog(@"newValue is:%ld",newValue);
            switch (operator) {
                case '+':
                    result=add(result,newValue);
                    break;
                case '-':
                    result=substract(result, newValue);
                    break;
                case '*':
                    result=multiply(result, newValue);
                    break;
                case '/':
                    result=divide(result, newValue);
                default:
                    result=add(result,newValue);
                    break;
            }
            
            
            
        }
        NSLog(@"result=%.3f",result);
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


//
//  main.m
//  3PreferLiteralSyntax
//
//  Created by abel on 15/3/15.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ConstantTest.h"

#define ANIMATION_DURATION 0.3

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       NSString *someString = @"Effective Objective-C 2.0";
        NSNumber *someNumber = @111;
        NSNumber *floatNumber = @2.22222f;
        NSNumber *doubleNubmer =@3.1415926;
        NSNumber *boolNumber = @YES;
        NSNumber *charNumber = @'a';
        
        int  x = 5;
        float y = 6.6;
        NSNumber *expressionNumber = @(x * y);
        
        //before literals
        NSArray *animals =
        [NSArray arrayWithObjects:@"cat",@"dog",@"mouse", nil];
        NSLog(@"animals= %@",animals);
        
        NSArray *newAnimals = @[@"cat",@"dog",@"bager"];
        NSLog(@"newAnimals= %@",newAnimals);
        
//        NSArray *newAnimalsWithNil = @[@"cat",@"dog",@"bager",nil];
//        NSLog(@"newAnimalsWithNil= %@",newAnimalsWithNil);
        
        //before literals
        NSArray *dog = [animals objectAtIndex:1];
        //now
        NSString *newdog = animals[1];
        
        //before
        NSDictionary *personData =
        [NSDictionary dictionaryWithObjectsAndKeys:@"great",@"fristName",@"abel"
         ,@"lastName",[NSNumber numberWithInt:29],@"age"];
        
        //now
        NSDictionary *newpersonData =
        @{
          @"firstName":@"great",
          @"lastName":@"abel",
          @"age":@28
          };
        
        
        //before
        NSString *lastName =[personData objectForKey:@"lastName"];
        //now
        NSString *newLastName = personData[@"lastName"];
        
        //before
        NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", nil];
        [mutableArray replaceObjectAtIndex:1 withObject:@"dog"];
        
        //now
        mutableArray[1]=@"dog";
        
        NSMutableArray *mutable =[@[@1,@2,@3,@"test",@"test1"] mutableCopy];
        NSLog(@"test:%@",mutable);
        [mutable addObject:@"对象1"];
        [mutable addObject:@"对象2"];
        [mutable addObject:@"对象3"];
        [mutable addObject:@"对象4"];
        [mutable insertObject:@"搅局的" atIndex:2];
        [mutable addObject:@"test2"];
        NSLog(@"test1:%@",mutable);
        //打印出来的是汉字
        NSLog(@"汉字%@",[mutable objectAtIndex:6]);
        
        sayHello();
        
        ConstantTest *loginTest = [[ConstantTest alloc]init];
        
        [loginTest login];
        
    }
    return 0;
}

int sayHello() {
    
    NSLog(@"ANIMATION_DURATION = %f",ANIMATION_DURATION);
    //better be
    static const NSTimeInterval kAnimationDuration = 0.3;
    NSLog(@"kAnimationDuration = %f",kAnimationDuration);
    NSLog(@"random=%d",getRandomInteger(10, 100));
    return 0;
    
}

int getRandomInteger(int minimum, int maximum) {
    return arc4random_uniform((maximum - minimum) + 1) + minimum;
}



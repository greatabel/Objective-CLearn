//
//  main.m
//  3Block
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Project.h"
#import "MyClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        float (^squareThis)(float);
        
        squareThis = ^(float x){
            return x * x;
        };
        
        float result = squareThis(12);
        NSLog(@"Result=%f",result);
        
        
        NSString *title = @"Multiply block Execution";
        float (^multiplyThese)(float,float) = ^(float x,float y){
            NSLog(title);
            return x * y;
        };
        
        
        NSLog(@"multiplyThese(3,4)=%f",multiplyThese(3,4));
        
        //---------
        Project *p = [[Project alloc]init];
        p.makeCustomReport = ^(NSString* title){
            
            NSLog(@"%@",title);
            NSLog(@"in main ");
        };
        [p generateReport];
        
        
        //--------------- Key-Value
        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
        
        // Add objects to a dictionary indexed by keys
        
        [dictionary setObject:@"A Book about the Letter A" forKey:@"A"];
        [dictionary setObject:@"A Book about the Letter B" forKey:@"B"];
        [dictionary setObject:@"A Book about the Letter C" forKey:@"C"];
        NSLog(@"%@",dictionary);
        

        MyClass *myInstance = [[MyClass alloc] init];
        NSString *string = [myInstance valueForKey:@"stringProperty"];
        [myInstance setValue:@4321 forKey:@"integerProperty"];
        NSString *mystring2 = [myInstance valueForKey:@"integerProperty"];
        NSLog(@"%@",mystring2);
        
    }
    return 0;
}

//
//  main.m
//  3PreferLiteralSyntaxOverEquivalentMethod
//
//  Created by 万畅 on 15/7/25.
//  Copyright (c) 2015年 万畅. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //老方法
        NSString *str = [[NSString alloc] init];
        NSNumber *value;
        value = [NSNumber numberWithInt:12345];
        value = [NSNumber numberWithFloat:123.45f];
        value = [NSNumber numberWithDouble:123.45];
        value = [NSNumber numberWithBool:YES];
        
        //新的
        NSString *someString = @"Effective Objective-C 2.0";
        NSNumber *someNumber = @1;
        NSNumber *intNumber = @1;
        NSNumber *doubleNumber = @3.1415926;
        NSNumber *boolNumber = @YES;
        NSNumber *charNumber = @'a';
        
        int x = 5;
        float y = 6.32f;
        NSNumber *expressionNumber = @(x * y);
        
        NSArray *animals = [NSArray arrayWithObjects:@"cat", @"dog", @"mouse", @"badger", nil];
        NSArray *animalsA = @[@"cat", @"dog", @"mouse", @"badger"];
        
        NSString *dog = [animals objectAtIndex:1];
        NSString *dogA = animals[1];
        
        id object1 = @"1";
        id object2 = @"2";
        id object3 = @"3";
     
                      
          NSArray *arrayA = [NSArray arrayWithObjects:object1, object2, object3, nil];
          NSArray *arrayB = @[object1, object2, object3];
         NSLog(@"#%@,%@",arrayA,arrayB);
          
          NSDictionary *personData =
          [NSDictionary dictionaryWithObjectsAndKeys:
          @"Matt", @"firstName",
          @"Galloway", @"lastName",
          [NSNumber numberWithInt:28], @"age",
          nil];
          NSDictionary *personDataA =
          @{@"firstName" : @"Matt",
          @"lastName" : @"Galloway",
          @"age" : @28};
          
          NSString *lastName = [personData objectForKey:@"lastName"];
          NSString *lastNameA = personData[@"lastName"];
        
        NSMutableArray *myArray=[NSMutableArray array];
        [myArray addObject:@"First string"];
        [myArray addObject:@"Second string"];
        [myArray addObject:@"Third string"];

          [myArray replaceObjectAtIndex:1 withObject:@"dog"];
        NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
          [mutableDictionary setObject:@"Galloway" forKey:@"lastName"];
          myArray[1] = @"dog";
          mutableDictionary[@"lastName"] = @"Galloway";
          
          NSMutableArray *mutable = [@[@1, @2, @3, @4, @5] mutableCopy];

    }
    return 0;
}

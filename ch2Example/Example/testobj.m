//
//  testobj.m
//  Ch2Example
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "testobj.h"

@implementation testobj

-(void)sayHello{
    
    //以前xcode4.4之前
    NSArray *arraydO = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",@"Four",nil];
    NSNumber * numberO = [NSNumber numberWithInt:1];
    NSArray * arrayO = [NSArray arrayWithObjects:@"one", @"two", nil];
    NSDictionary * dict0 = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
    
    //现在：
    NSNumber * number = @1;
    NSArray * array = @[@"one", @"two"];
    NSDictionary * dict = @{@"key1":@"value1", @"key2":@"value2"};
    
    NSLog(@"Hello, world!");
}
@end

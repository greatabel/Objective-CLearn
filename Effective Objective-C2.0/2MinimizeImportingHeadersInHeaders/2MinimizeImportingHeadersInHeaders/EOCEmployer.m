//
//  EOCEmployee.m
//  2MinimizeImportingHeadersInHeaders
//
//  Created by 万畅 on 15/7/25.
//  Copyright (c) 2015年 万畅. All rights reserved.
//

#import "EOCEmployer.h"

//to tell the compiler additional information beyond just "this is a class".
#import "EOCPerson.h"

@implementation EOCEmployer

-(void)addEmployee:(EOCPerson*)person{
    NSLog(@"in Empoyee Method:addEmployee");
    //http://stackoverflow.com/questions/322597/class-vs-import
    [person Show:@"1" :@"2"];

}

-(void)removeEmployee:(EOCPerson*)person{
    NSLog(@"in Empoyee Method:removeEmployee");
    [person Show:@"3":@"4"];
}

-(void)instanceMethod{
    NSLog(@"I am instanceMethod");
}

+(void)ClassMethod:(NSString *)name{
    NSLog(@"%@ is my Name in ClassMethod", name);
}

@end

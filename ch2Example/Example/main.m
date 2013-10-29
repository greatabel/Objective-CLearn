//
//  main.m
//  Example
//
//  Created by abel on 13-10-23.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factorial.h"
#import "test.h"
#import "testobj.h"

@interface SomeClass : NSObject
@property  NSString *firstName;
@property (readonly) NSString *lastName;
@end

struct PointA{
    
    float x;
    float y;
};

typedef struct{
    
    float x;
    float y;
}PointB;

enum MyEnum{
    Value1,
    Value2,
    Value3
};
typedef enum MyEnum MyEnumAfterTypeof;

void foo(int x,int y){
     // uncomment following line ,then use Product->Profile can work with clang
    //id obj=[[NSString alloc]init];
    switch(x){
        case 0:
            //
            break;
        case 1:
            //
            break;
        default:
            break;
    }
    
    
}

void someFunction(){
    static NSString *CellIdentifier = @"abel";
    CellIdentifier=[CellIdentifier stringByAppendingString:@" test"];
    NSLog(@"%@",CellIdentifier);
    
}



void myFunction(int a,int *b){
    
    a=20;
    *b=20;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
       // NSAutoreleasePool * pool =[[NSAutoreleasePool alloc]init];
        NSDate *date=[NSDate new];
        NSLog(@"Hello, World! The time is %@",date);
        foo(1,2);
        int aVariable=5555;
        NSLog(@"%d, argument count is:%d",aVariable,argc);
        
        
        someFunction();
        someFunction();
        
        //struct 定义和使用
        struct PointA p;
        p.x=10.1;
        p.y=20.2;
        NSLog(@"%f,%f",p.x,p.y);
        
        //struct另一种定义和使用
        PointB pb;
        pb.x=100.1;
        pb.y=200.2;
        NSLog(@"%f,%f",pb.x,pb.y);
        
        enum MyEnum foo;
        foo=Value1;
        MyEnumAfterTypeof foo1=Value2;
        
        switch (foo1) {
            case Value1:
                NSLog(@"%@",@"one");
                break;
            case Value2:
                NSLog(@"%@",@"two");
                break;
            default:
                break;
        }
        //指针使用
       long  x=5;
       long  *y=&x;
        NSLog(@"X:%ld - Y:%ld -:%ld",x,(long)y,*y);
        //指针用于声明对象
        NSString *foo2 =@" tester";
        NSLog(@"foo:%@",foo2);
        
        NSLog(@"factorial=%ld",calculateFactorial(5));
        
        int a=10,b=10;
        NSLog(@"%d,%d",a,b);
        myFunction(a,&b);
        NSLog(@"%d,%d",a,b);
        
        NSLog(@"test is:%ld",test(10));
        
        //测试 objet定义
        testobj *ps = [[testobj alloc] init];
        [ps sayHello];
    }
    
    return 0;
}


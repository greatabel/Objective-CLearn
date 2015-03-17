//
//  main.m
//  DeepCopyShadowCopy
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//http://blog.csdn.net/ioswyl88219/article/details/17512029
//http://blog.csdn.net/hellohaifei/article/details/8722742
// 堆 栈 http://mobile.51cto.com/iphone-394484.htm

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"系统的非容器类对象(NSString,NSNumber等等)");
        NSString *string = @"深拷贝与浅拷贝";
        NSString *stringCopy = [string copy];
        NSMutableString *stringMCopy = [string mutableCopy];
        
        NSLog(@"%p",string);
        NSLog(@"%p",stringCopy);
        NSLog(@"%p",stringMCopy);
        NSLog(@"count->=%d",string.retainCount);
        NSLog(@"count->=%d",stringCopy.retainCount);
        NSLog(@"count->=%d",stringMCopy.retainCount);
        
        
        NSLog(@"----");
        NSMutableString *Mstring = [NSMutableString stringWithString: @"origion"];
        NSString *stringCopy1 = [Mstring copy];
        NSMutableString *mStringCopy1 = [Mstring copy];
        NSMutableString *stringMCopy1 = [Mstring mutableCopy];
//        [mStringCopy1 appendString:@"mm"];//error
        [Mstring appendString:@" origion!"];
        [stringMCopy appendString:@"!!"];
        NSLog(@"%p",Mstring);
        NSLog(@"%p",stringCopy1);
        NSLog(@"%p",stringMCopy1);
        NSLog(@"%p",stringMCopy);
        /*
         我们可以认为，如果对一不可变对象复制，copy是指针复制（浅拷贝）和mutableCopy就是对象复制（深拷贝）。
         
         如果是对可变对象复制，都是深拷贝，但是copy返回的对象是不可变的。
         */
        
        /*
         统的容器类对象
         指NSArray，NSDictionary等。对于容器类本身，上面讨论的结论也是适用的，需要探讨的是复制后容器内对象的变化
         */
        NSLog(@"#####容器\n");
        NSArray *array1 = [NSArray arrayWithObjects:@"a",@"b",@"c",nil];
        NSArray *arrayCopy1 = [array1 copy];
        NSLog(@"array1 retain count: %d",[array1 retainCount]);
        NSLog(@"array1 retain count: %d",[arrayCopy1 retainCount]);
         NSLog(@"%p",array1);
         NSLog(@"%p",arrayCopy1);
        
        NSArray *mArray1 = [NSArray arrayWithObjects:[NSMutableString
                                                      stringWithString:@"a"],@"b",@"c",nil];
        NSArray *mArrayCopy2 = [mArray1 copy];
        NSLog(@"mArray1 retain count: %d",[mArray1 retainCount]);
        NSMutableArray *mArrayMCopy1 = [mArray1 mutableCopy];
        NSLog(@"mArray1 retain count: %d",[mArray1 retainCount]);
        
        NSMutableString *testString = [mArray1 objectAtIndex:0];     //testString = @"1a1";//这样会改变testString的指针，其实是将@“1a1”临时对象赋给了testString
        [testString appendString:@" tail"];//这样以上三个数组的首元素都被改变了
        NSLog(@"%@ %p",mArray1);
        NSLog(@"%@ %p",mArrayCopy2);
        NSLog(@"%@ %p",mArrayMCopy1);
        /*
         对于容器而言，其元素对象始终是指针复制。如果需要元素对象也是对象复制，就需要实现深拷贝
         */
        NSLog(@"##########----");
        NSArray *array = [NSArray arrayWithObjects:[NSMutableString stringWithString:@"first"],[NSString stringWithString:@"b"],@"c",nil];
        NSArray *deepCopyArray=[[NSArray alloc] initWithArray: array copyItems: YES];
        NSArray* trueDeepCopyArray = [NSKeyedUnarchiver unarchiveObjectWithData:                                                              [NSKeyedArchiver archivedDataWithRootObject: array]];
        NSLog(@"%@ %p",array);
        NSLog(@"%@ %p",deepCopyArray);
         NSLog(@"%@ %p",trueDeepCopyArray);
        
    }
    return 0;
}

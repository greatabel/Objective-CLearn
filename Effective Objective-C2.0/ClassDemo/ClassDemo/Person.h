//
//  Person.h
//  ClassDemo
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

//@interface 类名{
//    字段声明
//}
//属性声明
//方法声明
//@end

@interface Person : NSObject{
    //字段声明:字段是私有的，在类外部不能使用
    NSUInteger age;
    NSString *name;
}

//属性声明
@property (nonatomic,assign)NSUInteger age;
//属性声明
@property (nonatomic,retain)NSString *name;

//方法声明 类方法在定义的时候前面用“+”号标识
+(Person *)personClassMethod;

+(void)testClassMethod;
//实例方法前面则用“-”号标识
- (id)init;

- (void)setAge:(NSUInteger)theAge;
-(NSUInteger)age;

- (void)vote;


@end

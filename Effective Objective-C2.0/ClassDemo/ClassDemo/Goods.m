//
//  Goods.m
//  ClassDemo
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Goods.h"

@implementation Goods

- (void) dealloc{
    
    NSLog(@"%@ release by me",self);
    //需要调用父类来释放对象 http://blog.csdn.net/x32sky/article/details/7496901 需要关闭ARC
    [super dealloc];
}
@end

//
//  Goods.h
//  ClassDemo
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Goods : NSObject

@property int price;

/**
 *  dealloc方法，对象释放时会调用，用于资源的回收，相当于C++中的析构函数
 *  dealloc方法需要重写父类的方法，实现释放当前类的资源
 */
- (void)dealloc;

@end

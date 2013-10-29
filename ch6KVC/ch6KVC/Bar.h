//
//  Bar.h
//  ch6KVC
//
//  Created by abel on 13-10-26.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bar : NSObject
{
    NSArray *array;
    NSString *stringOnBar;
}
@property (strong,nonatomic) NSArray * array;
@property (strong,nonatomic) NSString * stringOnBar;


@end

@interface Foo : NSObject{
    Bar *bar;
    NSString *stringOnFoo;
}
@property (retain,nonatomic) Bar * bar;
@property (retain,nonatomic) NSString * stringOnFoo;





@end
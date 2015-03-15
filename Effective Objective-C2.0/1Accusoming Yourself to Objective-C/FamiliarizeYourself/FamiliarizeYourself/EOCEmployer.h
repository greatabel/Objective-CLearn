//
//  EOCEmployer.h
//  FamiliarizeYourself
//
//  Created by abel on 15/3/12.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

//为相互引用，又不循环
@class EOCPerson;

@interface EOCEmployer : NSObject

@property NSString *testname;

- (void)drive;

//测试相互
- (void)addEmployee:(EOCPerson *)person;
- (void)removeEmployee:(EOCPerson *)person;

@end

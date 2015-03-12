//
//  EOCPerson.h
//  FamiliarizeYourself
//
//  Created by abel on 15/3/12.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "EOCEmployer.h"

//更好的方式：tick2: tell compiler that the class EOCEmployer exists,

@class EOCEmployer;

@interface EOCPerson : NSObject

@property(nonatomic,copy) NSString *fristName;

@property(nonatomic,copy) NSString *lastName;

@property(nonatomic,strong) EOCEmployer *employer;


- (void)EOCPersonMethod;
@end

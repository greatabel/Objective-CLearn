//
//  SpecialProject.m
//  DefiningClass
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "SpecialProject.h"

@implementation SpecialProject

-(void)generateSpecialReport{
    
    NSLog(@"Special report");
}

-(void)generateReport{
    
    NSLog(@"generateReport in Special:start-->");
    [super generateReport];
    [self generateAnotherReport];
        NSLog(@"generateReport in Special:<--end");
}

@end

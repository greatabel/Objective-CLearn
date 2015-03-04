//
//  SpecialProject.h
//  DefiningClass
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"
@interface SpecialProject : Project

-(void)generateSpecialReport;

//overrride
-(void)generateReport;

@end

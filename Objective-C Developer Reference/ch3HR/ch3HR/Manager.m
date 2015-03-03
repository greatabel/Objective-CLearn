//
//  Manager.m
//  ch3HR
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Manager.h"

@implementation Manager

@synthesize reports;


-(id)init;{
    if(self =[super init]){
        [self setReports:[NSMutableArray array]];
    }
    return self;
}

-(void)addReport:(Employee *)inEmployee;{
    [reports addObject:inEmployee];
}
-(double)bonus;{
    return salary*.10;
}
@end

//
//  Teacher.m
//  multipleInherit
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Teacher.h"

#import "Doctor.h"
//类别 @interface Class (Category)
@interface Teacher (DoctorMethod)

- (void)operate;

@end

@implementation Teacher

- (id)forwardingTargetForSelector:(SEL)aSelector{
    Doctor *doctor = [[Doctor alloc]init];
    if([doctor respondsToSelector:aSelector]){
        return doctor;
    }
    return nil;
}

@end

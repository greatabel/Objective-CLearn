//
//  NSMutableString+GUID.m
//  ch8extendExistingClass
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "NSMutableString+GUID.h"

@implementation NSMutableString (GUID)

-(void)appendGuid
{
    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
    NSString *str = (NSString *)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, uuid));
    [self appendString:str];
    CFRelease(uuid);
}

+(id)stringWithGuid;
{
    NSMutableString *ret=[self string];
    [ret appendGuid];
    return ret;
}

@end


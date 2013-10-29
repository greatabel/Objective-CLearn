//
//  NSObject+NSMutableDictionary_SortedKeys.m
//  ch8extendExistingClass
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "NSObject+NSMutableDictionary_SortedKeys.h"
#import <Foundation/NSObjCRuntime.h>
#import <objc/runtime.h>

@implementation NSMutableDictionary (SortedKeys)

-(void)generateSortedKeys;
{
    NSMutableArray *keys=[NSMutableArray arrayWithArray:[self allKeys]];
    [keys sortedArrayUsingSelector:@selector(compare:)];
    objc_setAssociatedObject(self, @"KEYS", keys, OBJC_ASSOCIATION_RETAIN);
    
}

-(NSArray *)sortedKeys;
{
    return objc_getAssociatedObject(self, @"KEYS");
}
-(void)dropSortedKeys;{
    objc_removeAssociatedObjects(self);
    objc_setAssociatedObject(self, @"KEYS", nil, OBJC_ASSOCIATION_RETAIN);
    
}
@end

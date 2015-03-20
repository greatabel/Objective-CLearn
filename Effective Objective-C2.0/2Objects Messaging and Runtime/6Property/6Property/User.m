//
//  User.m
//  6Property
//
//  Created by abel on 15/3/20.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "User.h"
#import <objc/runtime.h>

@implementation User

@dynamic name;

- (void)dynamicSetName:(NSString *) aName {
    if (name != nil) {
        [name release];
        name = nil;
    }
    [aName retain];
    name = aName;
}

- (NSString *)dynamicName {
    return name;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSLog(@"Instance Method: %@", NSStringFromSelector(sel));
    if ([@"setName:" isEqualToString:NSStringFromSelector(sel)]) {
        class_addMethod([self class], sel, [self instanceMethodForSelector:@selector(dynamicSetName:)], "v@:");
        return YES;
    } else if ([@"name" isEqualToString:NSStringFromSelector(sel)]) {
        class_addMethod([self class], sel, [self instanceMethodForSelector:@selector(dynamicName)], "@");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

@end
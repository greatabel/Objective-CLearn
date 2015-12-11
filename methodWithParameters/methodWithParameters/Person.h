//
//  Person.h
//  methodWithParameters
//
//  Created by 万畅 on 15/12/10.
//  Copyright © 2015年 abelwan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property (copy) NSString *name;

- (void) sayHello;
+ (Person *)personWithName:(NSString *)name;

+ (NSString *)testMethod:(Byte[])inputbytes;

@end

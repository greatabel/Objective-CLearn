//
//  Person.m
//  methodWithParameters
//
//  Created by 万畅 on 15/12/10.
//  Copyright © 2015年 abelwan. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)sayHello {
    NSLog(@"HELLO!!");

}

+(Person *)personWithName:(NSString *)name {
    Person *person = [[Person alloc]init];

    person.name = [NSString stringWithFormat:@"%@/%@/%@", name, @"###", @"@@@"];
    return person;
}

+ (NSString *)pbDecodeMethod:(Byte[])originalbytes {


    NSMutableData *buffer = [NSMutableData data];
    [buffer appendBytes:originalbytes length:199*sizeof(Byte)];

    long len1 = [buffer length];
    NSLog(@"%ld",len1);
    char raw1[len1];
    [buffer getBytes:raw1 length:len1];

    return @"test";
}

@end

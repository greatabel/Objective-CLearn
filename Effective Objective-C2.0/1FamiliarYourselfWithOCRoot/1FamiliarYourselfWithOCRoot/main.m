//
//  main.m
//  1FamiliarYourselfWithOCRoot
//
//  Created by 万畅 on 15/7/24.
//  Copyright (c) 2015年 万畅. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString* s = @"Abel say hello";
        NSString* s2 = [s uppercaseString];
        NSLog(@"%@ | %@",s,s2);
        NSString *s3 = s;
        NSLog(@"s3=%@, %d, %@", s3,(s==s3) ,(s==s3 ? @"YES":@"NO"));
        
        NSLog(@"输出stack space------");
        //http://stackoverflow.com/questions/550195/is-it-possible-to-nslog-c-structs-like-cgrect-or-cgpoint
        CGRect rect1 = CGRectMake(100, 100, 100, 100);
        CGRect rect2 = CGRectMake(190, 190, 100, 100);
        
        NSLog(@"%@", CGRectCreateDictionaryRepresentation(rect1));
        NSLog(@"%@", CGRectCreateDictionaryRepresentation(rect2));
        


    }
    return 0;
}

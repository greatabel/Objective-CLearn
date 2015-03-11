//
//  main.m
//  FamiliarizeYourself
//
//  Created by abel on 15/3/11.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
   NSString *someString = @"The String";
        
        // interface type can not be statically allocated
//                NSString stackStringA;
        //下面是可以：
         NSString *stackString;
        
        //下面的对象是c的，所以不要*
        CGRect frame;
        frame.origin.x = 0.0f;
        frame.origin.y = 10.0f;
        frame.size.width = 100.0f;
        frame.size.height = 150.0f;
        //http://stackoverflow.com/questions/550195/is-it-possible-to-nslog-c-structs-like-cgrect-or-cgpoint
      NSLog(@"%@", CGRectCreateDictionaryRepresentation(frame));
        
        //printf 和NSLog区别：http://stackoverflow.com/questions/9006801/difference-between-nslog-and-printf-statement-for-objectivec
        int i = 100;
        printf("printf %d\n",i);
        NSLog(@"NSLog %d\n",i);
    }
    return 0;
}

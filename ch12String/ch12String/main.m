//
//  main.m
//  ch12String
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSString *string1=@"this is a string";
        NSString *string2=@"this is a string";
        NSString *string3=[NSString stringWithString:string1];
        
        assert(string1 ==string2);
        assert([string1 isEqual:string2]);
        assert([string1 isEqual:string3]);
        assert(string1==string3);
        
        NSString *str;
        NSString *cardName=@"Ace";
        NSString *cardSuit=@" Spades";
        str=[NSString stringWithFormat:@"The winning card is %@ of %@",cardName,cardSuit];
        NSLog(@"%@",str);
        str=[NSString stringWithFormat:@"Your have %ld gold!",11.1];
        NSLog(@"%@",str);
        
        
        NSArray *word=[str componentsSeparatedByString:@" "];
        NSLog(@"%@",word);
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


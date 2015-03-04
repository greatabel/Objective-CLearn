//
//  main.m
//  5Singletons
//
//  Created by abel on 15/3/4.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppSingleton.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AppSingleton *ap = [AppSingleton sharedInstance];
        
        //error-----
        NSError *error = nil;
        NSString *file = @"/Users/Shared/sarray.txt";
        NSString *content = [NSString stringWithContentsOfFile:file encoding:NSStringEncodingConversionAllowLossy error:&error];
        
        if(!error){
            NSLog(@"content=%@",content);
        }else{
            NSLog(@"error=%@",error);
        }
        
     @try{
         
         NSString  *arrayPath;
         NSString  *dictPath;
         NSArray *array = @[@"IPA", @"Pilsner", @"Stout"];
         
         NSDictionary *dictionary = @{@"key1" : array,
                                      @"key2" : @"Hops",
                                      @"key3" : @"Malt",
                                      @"key4" : @"Yeast" };
         
         // Get path to documents directory
//         NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
//                                                              NSUserDomainMask, YES);
         NSArray *paths = [NSArray arrayWithObjects:
                           @"/users/abel/Downloads/AbelProject/Objective-CLearn/Objective-C Quick Syntax Reference/5Singletons/5Singletons/"
                           ,nil];
         
         NSLog(@"##%@",paths);
         if ([paths count] > 0)
         {
             // Path to save array data
             arrayPath = [[paths objectAtIndex:0]
                          stringByAppendingPathComponent:@"array.out"];
             
             // Path to save dictionary
             dictPath = [[paths objectAtIndex:0] 
                         stringByAppendingPathComponent:@"dict.out"];
             
             // Write array
             [array writeToFile:arrayPath atomically:YES];
             
             // Write dictionary
             [dictionary writeToFile:dictPath atomically:YES];
         }
         
         NSString *arrayPath1 = @"/users/abel/Downloads/AbelProject/Objective-CLearn/Objective-C Quick Syntax Reference/5Singletons/5Singletons/array.out";
         
         // Read both back into new NSArray and NSDictionary object
         NSArray *arrayFromFile = [NSArray arrayWithContentsOfFile:arrayPath1];
         NSDictionary *dictFromFile = [NSDictionary dictionaryWithContentsOfFile:dictPath];
         
         // Print the contents
         for (NSString *element in arrayFromFile)
             NSLog(@"here: %@", element);
         
         for (NSString *key in dictFromFile)
             NSLog(@"%@ : %@", key, [dictionary valueForKey:key]);
         

        }
        @catch(NSException *exception){
            NSLog(@"exception = %@",exception);
        }
        @finally{
            NSLog(@"Moving on ..finally");
        
        }
        
        //-----------------background processing demo---------------------
         [[NSFileManager defaultManager] createFileAtPath:@"/users/abel/Downloads/AbelProject/Objective-CLearn/Objective-C Quick Syntax Reference/5Singletons/5Singletons/testfile" contents:@"test" attributes:nil];
        
        //http://stackoverflow.com/questions/19569244/nsoperation-and-nsoperationqueue-working-thread-vs-main-thread
        //on osx 10.10 I should change to use GCD way:
        
        NSBlockOperation *jtOperation = [NSBlockOperation blockOperationWithBlock:^{
            NSLog(@"here is something for jt");
        }];
        
        NSBlockOperation *clOperation = [NSBlockOperation blockOperationWithBlock:^{
            NSLog(@"oh is this going to work");
        }];
        
        //demo 2
        NSOperationQueue *myOQ=[[NSOperationQueue alloc] init];
        [myOQ addOperation:jtOperation];
        [myOQ addOperation:clOperation];
        
        NSOperationQueue *backgroud = [[NSOperationQueue alloc]init];
        [backgroud addOperationWithBlock:^{
            for(int i1=1000;i1>0;i1--){
                NSLog(@"i=%i",i1);
            }
                   }];
        
        
    }
    return 0;
}

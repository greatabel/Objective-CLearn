//
//  main.m
//  ch10ErrorAndException
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileWrapper.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        FileWrapper *wrapper =[[FileWrapper alloc]init];
        if([wrapper openFileAtPath:@"..."]){
            
        }else{
            NSLog(@"Can't open file!");
        }
        //another test
        int retCode=0;
        @try
        {
            [wrapper openFileAtPath_WithException:@"..."];
            
            
        }@catch (NSException *e) {
            NSString *errorName=[e name];
            NSString *errorMsg=[e reason];
            NSLog(@"An error occured:%@ %@",errorName,errorMsg);
            retCode=-255;
        }
    @finally {
        NSLog(@"finally invoked");
    }
        //test 2
        @try
        {
            NSError *error=nil;
            if(   [wrapper openFileAtPath_WithError:@"..." withError:&error]){
                NSLog(@" Program is going to branch with error");
            }else{
                
            }
            
        }@catch (NSException *e) {
            NSString *errorName=[e name];
            NSString *errorMsg=[e reason];
            NSLog(@"An error occured:%@ %@",errorName,errorMsg);
            retCode=-255;
        }
        @finally {
            NSLog(@"finally invoked");
        }
        
    }
    return 0;
}


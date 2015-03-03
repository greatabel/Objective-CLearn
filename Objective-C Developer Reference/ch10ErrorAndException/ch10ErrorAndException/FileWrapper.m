//
//  FileWrapper.m
//  ch10ErrorAndException
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "FileWrapper.h"

@implementation FileWrapper

-(BOOL)openFileAtPath:(NSString *)inPath;
{
    contents=[NSDictionary dictionaryWithContentsOfFile:inPath];
    if(!contents)
        return NO;
    return YES;
}

-(BOOL)openFileAtPath_WithException:(NSString *)inPath;{
    contents=[NSDictionary dictionaryWithContentsOfFile:inPath];
     NSFileManager *myManager = [NSFileManager defaultManager];
    if(!contents){
        NSException *ex=[NSException exceptionWithName:@"Error opening file" reason:@"abel ex" userInfo:nil];
        if(![myManager fileExistsAtPath :inPath]){
            NSException *ex=[NSException exceptionWithName:@"Error opening file" reason:@"file doesn't exist" userInfo:nil];
            
        }
        else{
            NSException *ex=[NSException exceptionWithName:@"Error opening file" reason:@"Unknow error." userInfo:nil];
        }
        @throw ex;
    }
}
-(BOOL)openFileAtPath_WithError:(NSString *)inPath withError:(NSError **)outError;
{
    contents=[NSDictionary dictionaryWithContentsOfFile:inPath];
    NSFileManager *myManager = [NSFileManager defaultManager];
    if(!contents){
        if(![myManager fileExistsAtPath :inPath]){
            NSDictionary *errorInfo=[NSDictionary dictionaryWithObject:@"<-AbelError->File is not existed" forKey:NSLocalizedDescriptionKey];
            *outError =[NSError errorWithDomain:@"FileWrapper-Error" code:404 userInfo:errorInfo];
        }else{
            NSDictionary *errorInfo=[NSDictionary dictionaryWithObject:@"<-AbelError->Unknow error" forKey:NSLocalizedDescriptionKey];
            *outError =[NSError errorWithDomain:@"FileWrapper-Error" code:501 userInfo:errorInfo];
        }
        
    }
}

@end

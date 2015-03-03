//
//  FileWrapper.h
//  ch10ErrorAndException
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileWrapper : NSObject
{
    NSDictionary *contents;
}
-(BOOL)openFileAtPath:(NSString *)inPath;

-(BOOL)openFileAtPath_WithException:(NSString *)inPath;

-(BOOL)openFileAtPath_WithError:(NSString *)inPath withError:(NSError **)outError;
@end

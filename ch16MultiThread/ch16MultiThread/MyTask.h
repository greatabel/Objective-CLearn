//
//  MyTask.h
//  ch16MultiThread
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTask : NSOperation{
    int operationId;
}

@property int  operationId;

@end

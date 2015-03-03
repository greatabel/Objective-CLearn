//
//  main.m
//  ch14NSValue_NSNumber_NSData
//
//  Created by abel on 13-10-28.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameState.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        typedef struct{
            int someMemeber;
            float someOtherMember;
        }MyDataType;
        
        //------------------
        MyDataType item;
        item.someMemeber=10;
        item.someMemeber=11.11;
        NSValue *boxStruct= [NSValue value:&item withObjCType:@encode(MyDataType)];
        //------------------
        int someNumber=20;
        float someFloat=22.22;
        NSNumber *theNumber =[NSNumber numberWithInt:someNumber];
        NSNumber *theFloat=[NSNumber numberWithFloat:someFloat];
        //------------------
        //NSData 使用
        [[GameState sharedState]sychronized];
        
        
        
        
        
        
    }
    return 0;
}


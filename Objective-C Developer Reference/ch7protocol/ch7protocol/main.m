//
//  main.m
//  ch7protocol
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Demo.h"
#import "Bicycle.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Demo *demo=[[Demo alloc]init];
        DemoDelegate *delegate=[[DemoDelegate alloc]init];
        [demo setDemoDelegate:delegate];
        [demo sendMessage];
        
        for(int i=0;i<20;i++){
            printf("#");
        }
        // insert code here...
        NSLog(@"Another example:");
        
        Bicycle *bike=[[Bicycle alloc]init];
        [bike startPedaling];
        [bike signalLeftTurn];
        [bike signalStop];
        [bike lockToStructure:nil];
        
        
    }
    return 0;
}


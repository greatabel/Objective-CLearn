//
//  Printer.m
//  ch17DesignPattern_Delegate
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Printer.h"

@implementation Printer

@synthesize delegate;

-(id)init{
    self=[super init];
    if(self){
        //initialization here ,if in real world
    }
    return self;
}

-(void)printData{
    for(int i=0;i<3;i++){
        NSLog(@"This is %d",i);
    }
    [delegate performSelector:@selector(finishPrint)];
}

@end

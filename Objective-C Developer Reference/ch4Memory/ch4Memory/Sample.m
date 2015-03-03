//
//  Sample.m
//  ch4Memory
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Sample.h"

@implementation Sample

-(id)init{
    
    if(self= [super init]){
        NSLog(@"constructing is being invoked,counter:%ld",[self retainCount]);
    }
    return (self);
}

-(void)dealloc{
    NSLog(@"disposing is being invoked,counter:%ld",[self retainCount]);
    [super dealloc];
}
@end

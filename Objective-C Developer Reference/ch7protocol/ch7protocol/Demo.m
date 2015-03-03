//
//  Demo.m
//  ch7protocol
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Demo.h"

@implementation Demo

-(void)setDemoDelegate:(DemoDelegate *)delegate{
    demoDelegate=delegate;
    
}
//通知委托类方法执行
-(void)sendMessage{
    [demoDelegate handleDelegate:self];
}
@end


@implementation DemoDelegate


-(void)handleDelegate:(Demo *)demo{
    NSLog(@"hanlde>%@",demo);
}

@end
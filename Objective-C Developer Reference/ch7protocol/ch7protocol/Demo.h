//
//  Demo.h
//  ch7protocol
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoDelegate : NSObject{
    
}

@end


@interface Demo : NSObject
{
    DemoDelegate *demoDelegate;
}
-(void)setDemoDelegate:(DemoDelegate *)delegate;
-(void)sendMessage;

@end


//NSObject的WSDelegate类别,定义非正规协议
@interface NSObject (WSDelegate)
-(void)setDemoDelegate:(DemoDelegate *)delegate;
-(void)handleDelegate:(Demo *)demo;


@end

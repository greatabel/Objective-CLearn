//
//  interfaceMyClass.m
//  privatepublicMethod
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "interfaceMyClass.h"

@interface interfaceMyClass ()
//在m文件中加上一个oc extension，在里面声明需要的私有
-(void)privateMethod2;

@end

@implementation interfaceMyClass

-(void)myPublicMethod{
    NSLog(@"-->test in interfaceMyClass");
}

- (void)myPrivateMethod
{
    NSLog(@"@@-->test in myPrivateMethod");
}

-(void)IcanUseTheprivateMethod{
    
    NSLog(@"### IcanUseTheprivateMethod");
}

-(void)privateMethod2{
    NSLog(@"### privateMethod2");
}


@end

//
//  test.m
//  testprotobuff2
//
//  Created by 万畅 on 15/11/17.
//  Copyright © 2015年 abelwan. All rights reserved.
// https://github.com/alexeyxo/protobuf-objc
// http://nixwang.com/2015/03/18/protocol-buffer-for-ios/

#import "test.h"
//#import "measurement.pb.h"
#import "measurement.pb.h"

@implementation test

-(void)doSomething{
    Measurement* measure = [[[[[Measurement builder] setSideA:true]
                        setSideB:false]
                       setImage:@"1,2,3"] build];
    NSData* data = [measure data];
}

@end

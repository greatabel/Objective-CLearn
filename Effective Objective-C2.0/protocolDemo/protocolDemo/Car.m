//
//  Car.m
//  protocolDemo
//
//  Created by abel on 15/3/13.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)signalStop {
    NSLog(@"#car#:Bending left arm downwards");
}
- (void)signalLeftTurn {
    NSLog(@"#car#:Extending left arm outwards");
}
- (void)signalRightTurn {
    NSLog(@"#car#:Bending left arm upwards");
}

@end

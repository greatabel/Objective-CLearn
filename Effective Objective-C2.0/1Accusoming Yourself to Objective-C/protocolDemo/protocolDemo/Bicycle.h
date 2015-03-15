//
//  Bicycle.h
//  protocolDemo
//
//  Created by abel on 15/3/13.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StreetLegal.h"

@interface Bicycle : NSObject<StreetLegal>

- (void)startPedaling;
- (void)removeFrontWheel;
- (void)lockToStructure:(id)theStructure;

@end

//
//  Bicycle.h
//  ch7protocol
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StreetLegal.h"
@interface Bicycle : NSObject<StreetLegal>

-(void)startPedaling;
-(void)removeFrontWheel;
-(void)lockToStructure:(id)theStructure;
/*
 Adopting the protocol is like adding all of the methods in StreetLegal.h to Bicycle.h. This would work the exact same way even if Bicycle inherited from a different superclass. Multiple protocols can be adopted by separating them with commas (e.g., <StreetLegal, SomeOtherProtocol>).
 */
@end

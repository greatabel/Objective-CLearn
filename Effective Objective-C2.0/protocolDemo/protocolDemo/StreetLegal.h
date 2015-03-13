//
//  StreetLegal.h
//  protocolDemo
//
//  Created by abel on 15/3/13.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StreetLegal <NSObject>

- (void) signalStop;

- (void) signalLeftTurn;

- (void) signalRightTurn;


@end

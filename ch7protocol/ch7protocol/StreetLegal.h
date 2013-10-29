//
//  StreetLegal.h
//  ch7protocol
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StreetLegal <NSObject>

-(void)signalStop;
-(void)signalLeftTurn;
-(void)signalRightTurn;

@end

//
//  Bicycle.m
//  ch7protocol
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Bicycle.h"

@implementation Bicycle

/*
 There’s nothing special about the Bicycle implementation—it just has to make sure all of the methods declared by Bicycle.h and StreetLegal.h are implemented:
 */
-(void)signalStop{
    NSLog(@"Bending left arm downwards");
}

-(void)signalLeftTurn{
    NSLog(@"Extending left arm outward");
}

-(void)signalRightTurn{
    NSLog(@"Bending left arm upward");
}
-(void)startPedaling{
    NSLog(@"Here we go!");
}
- (void)removeFrontWheel {
    NSLog(@"Front wheel is off."
          "Should probably replace that before pedaling...");
}
- (void)lockToStructure:(id)theStructure {
    NSLog(@"Locked to structure. Don't forget the combination!");
}


@end

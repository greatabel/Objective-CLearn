//
//  main.m
//  protocolDemo
//
//  Created by abel on 15/3/13.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Bicycle.h"
#import "Car.h"

#import "StreetLegal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // http://rypress.com/tutorials/objective-c/protocols
        
        Bicycle *bike = [[Bicycle alloc]init];
        [bike startPedaling];
        [bike signalRightTurn];
        [bike signalLeftTurn];
        
        [bike startPedaling];
        [bike lockToStructure:nil];
        
        Car *car = [[Car alloc]init];
        [car signalLeftTurn];
        [car signalRightTurn];
        [car signalStop];
        
        NSLog(@"----------------protocol----------------");
        id <StreetLegal> mysteryVehicle = [[Car alloc]init];
        [mysteryVehicle signalLeftTurn];
        
        mysteryVehicle = [[Bicycle alloc]init];
        [mysteryVehicle signalLeftTurn];
        
        NSLog(@"----------------test type checking ----------------");
        if ([mysteryVehicle conformsToProtocol:@protocol(StreetLegal)]) {
            [mysteryVehicle signalStop];
            [mysteryVehicle signalLeftTurn];
            [mysteryVehicle signalRightTurn];
        }
        
    }
    return 0;
}

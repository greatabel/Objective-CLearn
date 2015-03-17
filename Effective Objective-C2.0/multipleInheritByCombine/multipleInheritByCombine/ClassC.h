//
//  ClassC.h
//  multipleInheritByCombine
//
//  Created by abel on 15/3/17.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"

@interface ClassC : NSObject{
    ClassA *a;
    ClassB *b;
}

-(id)initWithA:(ClassA *)anA b:(ClassB *)aB;

-(void)methodA;
-(void)methodB;

@end

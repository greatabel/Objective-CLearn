//
//  Foo.h
//  ch3Object
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject
{
    NSString *someVariable;
    NSString *someOtherVariable;
    NSMutableArray *someArray;
}
@property (nonatomic,retain) NSString *someVariable;
@property (nonatomic,retain) NSString *someOtherVariable;

-(void)someMethod;
-(BOOL)someOtherMethodWithArg:(NSString *)param andAnotherArg:(int)param2;

// class method
+(id)foowithArray:(NSMutableArray *)inArray;
@end

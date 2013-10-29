//
//  Observer.h
//  ch6KVC
//
//  Created by abel on 13-10-26.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyPoint.h"

@interface Observer : NSObject
{
    MyPoint *point;
}
@property (strong) MyPoint *point;
-(id)initWithPoint:(MyPoint *)inPoint;

@end

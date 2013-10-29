//
//  Printer.h
//  ch17DesignPattern_Delegate
//
//  Created by abel on 13-10-29.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrinterDelegate.h"x
@interface Printer : NSObject
{
    
}
@property(nonatomic,assign)id<PrinterDelegate> delegate;


-(void)printData;


@end

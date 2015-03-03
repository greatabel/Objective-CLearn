//
//  NSObject+NSMutableDictionary_SortedKeys.h
//  ch8extendExistingClass
//
//  Created by abel on 13-10-27.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary(SortedKeys)

-(void)generateSortedKeys;
-(NSArray *)sortedKeys;
-(void)dropSortedKeys;

@end

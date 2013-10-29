//
//  Observer.m
//  ch6KVC
//
//  Created by abel on 13-10-26.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Observer.h"

@implementation Observer

@synthesize point;

-(id)initWithPoint:(MyPoint *)inPoint;{
    if(self= [super init]){
        point=inPoint;
        [point addObserver:self forKeyPath:@"x" options:(NSKeyValueObservingOptionNew|
                                                         NSKeyValueObservingOptionOld) context:nil];
        [point addObserver:self forKeyPath:@"y" options:(NSKeyValueObservingOptionNew|
                                                         NSKeyValueObservingOptionOld) context:nil];
        
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    NSNumber *oldValue=[change objectForKey:NSKeyValueChangeOldKey];
    NSNumber *newValue=[change objectForKey:NSKeyValueChangeNewKey];
    
    if(keyPath == @"x")
        NSLog(@"value for x changed from %f to %f",[oldValue floatValue]
              ,[newValue floatValue]);
    if(keyPath==@"y")
        NSLog(@"value for y changed from %f to %f",[oldValue floatValue]
              ,[newValue floatValue]);
}

@end

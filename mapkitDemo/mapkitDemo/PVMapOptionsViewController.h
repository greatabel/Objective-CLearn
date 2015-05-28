//
//  PVMapOptionsViewController.h
//  mapkitDemo
//
//  Created by liwei on 15/5/20.
//  Copyright (c) 2015年 greatabel. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, PVMapOption ) {
    PVMapBoundary = 0,
    PVMapOverlay,
    PVMapPins,
    PVMapCharacterLocation,
    PVMapRoute
};


@interface PVMapOptionsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *selectedOptions;

@end

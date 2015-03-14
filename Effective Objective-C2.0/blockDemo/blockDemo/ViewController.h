//
//  ViewController.h
//  blockDemo
//
//  Created by abel on 15/3/14.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//abel
@property(nonatomic,strong) NSString *(^blockAsMemberVar)(void);


- (void)testBlockStorageType;



-(void)addNumber:(int)number1 withNumber:(int)number2 andCompletionHandler:(void (^)(int result))completionHandler;


@end


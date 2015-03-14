//
//  ViewController.m
//  blockDemo
//
//  Created by abel on 15/3/14.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //http://www.appcoda.com/objective-c-blocks-tutorial/
    // Do any additional setup after loading the view, typically from a nib.
    ^(int a,int b){
        int result = a * b;
        return result;
    };
    
    int (^howMany)(int,int) = ^(int a, int b){
        return a + b;
    };
    
    void (^justMessage)(NSString *) = ^(NSString *message){
        NSLog(@"%@", message);
    };
    
    //declare a block variable
    void (^xyz)(void);
    
    xyz = ^(void){
        NSLog(@"What's up?");
    };
    
    _blockAsMemberVar = ^(void){
      return @"This block is decleared as a member variable!";
    };
    
    
    NSDate *(^today)(void);
    
    today = ^(void){
        return [NSDate date];
    };
    
    
    float results = ^(float value1, float value2,float value3){
        return value1 * value2 * value3;
    }(1,2,3);
    
    //调用--------
    NSLog(@"%d",howMany(5,10));
    NSLog(@"%@",today());
    NSLog(@"%f",results);
    
    int factor = 5;
    int (^newResult)(void) = ^(void){
        return factor * 10;
    };
    
    NSLog(@"%d", newResult());

    
    [self testBlockStorageType];
    
   
        
        // Other code related to view controller presentation...
    [self addNumber:5 withNumber:7 andCompletionHandler:^(int result) {
        // We just log the result, no need to do anything else.
        NSLog(@"The result is %d", result);
    }];
}

-(void)addNumber:(int)number1 withNumber:(int)number2 andCompletionHandler:(void (^)(int result))completionHandler{
    int result = number1 + number2;
    completionHandler(result);
}

-(void)testBlockStorageType{
  __block  int someValue = 10;
    
    int (^myOperation)(void) = ^(void){
        someValue += 5;
        
        return someValue + 10;
    };
    
    NSLog(@"testBlockStorageType %d", myOperation());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  methodWithParameters
//
//  Created by 万畅 on 15/12/10.
//  Copyright © 2015年 abelwan. All rights reserved.
// http://code.tutsplus.com/tutorials/objective-c-succinctly-methods--mobile-22014

#import "ViewController.h"

#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *p1 = [Person personWithName:@"Abel"];
    [p1 sayHello];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

@end

//
//  ViewController.m
//  testprotobuff2
//
//  Created by 万畅 on 15/11/3.
//  Copyright © 2015年 abelwan. All rights reserved.
//

#import "ViewController.h"

#import "test.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    test *t = [[test alloc]init];
    [t doSomething];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
}

@end

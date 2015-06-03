//
//  ViewController.m
//  ihanhai
//
//  Created by liwei on 15/5/22.
//  Copyright (c) 2015年 company. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSString *strURL = @"http://www.baidu.com";
//    NSURL *url = [NSURL URLWithString:strURL];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [self.webview loadRequest:urlRequest];
//    
    self.tabBarItem.badgeValue = @"10";
    
    
    UIImage *select = [UIImage imageNamed:@"informationChoose"];
    
    self.tabBarItem.selectedImage = [select imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    

//    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"information" ofType:@"html" inDirectory:@"www"]];
      NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"iscroll-5-pull-to-refresh-and-infinite-demo" ofType:@"html" inDirectory:@"www/iscroll5"]];
     [self.webview setScalesPageToFit:YES];
     [self.webview loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

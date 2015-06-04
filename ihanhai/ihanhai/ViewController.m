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

- (IBAction)myclick:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"gotoSearch_segue" sender:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSString *strURL = @"http://www.baidu.com";
//    NSURL *url = [NSURL URLWithString:strURL];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [self.webview loadRequest:urlRequest];
//
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    self.navigationController.navigationBar.translucent = NO;
    
    CGRect frame = CGRectMake(0, 0, 400, 44);
    UILabel *label = [[[UILabel alloc] initWithFrame:frame] init];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:18.0];
    label.textAlignment = UITextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.text = @"招融宝";
    self.navigationItem.titleView = label;
    
    UIImage* image3 = [UIImage imageNamed:@"searchicon"];
    CGRect frameimg = CGRectMake(0, 0, image3.size.width, image3.size.height);
    UIButton *someButton = [[UIButton alloc] initWithFrame:frameimg];
    [someButton setBackgroundImage:image3 forState:UIControlStateNormal];
    [someButton addTarget:self action:@selector(myclick:)
         forControlEvents:UIControlEventTouchUpInside];
    [someButton setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *mailbutton =[[UIBarButtonItem alloc] initWithCustomView:someButton];
    self.navigationItem.rightBarButtonItem=mailbutton;
    
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

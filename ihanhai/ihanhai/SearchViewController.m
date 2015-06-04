//
//  SearchViewController.m
//  ihanhai
//
//  Created by liwei on 15/6/4.
//  Copyright (c) 2015年 company. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"search" ofType:@"html" inDirectory:@"www"]];
        [self.searchView setScalesPageToFit:YES];
        [self.searchView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
//    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"search" ofType:@"html" inDirectory:@"www"]];
//    [self.searchView setScalesPageToFit:YES];
//    [self.searchView loadRequest:[NSURLRequest requestWithURL:url]];
    
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

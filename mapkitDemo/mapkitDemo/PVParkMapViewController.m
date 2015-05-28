//
//  PVParkMapViewController.m
//  mapkitDemo
//
//  Created by liwei on 15/5/20.
//  Copyright (c) 2015年 greatabel. All rights reserved.
//

#import "PVParkMapViewController.h"
#import "PVMapOptionsViewController.h"

@interface PVParkMapViewController ()

@property (nonatomic, strong) NSMutableArray *selectedOptions;


@end

@implementation PVParkMapViewController

- (void)loadSelectedOptions {
    // To be implemented ...
}

- (IBAction)closeOptions:(UIStoryboardSegue *)exitSegue {
    PVMapOptionsViewController *optionsViewController = exitSegue.sourceViewController;
    self.selectedOptions = optionsViewController.selectedOptions;
    [self loadSelectedOptions];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

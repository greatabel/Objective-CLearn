//
//  SearchViewController.m
//  ihanhai
//
//  Created by liwei on 15/6/4.
//  Copyright (c) 2015年 company. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()
//
//@property (nonatomic, strong) UIButton *searchButton;
//@property (nonatomic, strong) UIBarButtonItem *searchItem;
////@property (nonatomic, strong) UISearchBar *searchBar;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation SearchViewController

- (IBAction)myclick:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"goto_wordSearch" sender:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"search" ofType:@"html" inDirectory:@"www"]];
        [self.searchView setScalesPageToFit:YES];
        [self.searchView loadRequest:[NSURLRequest requestWithURL:url]];
    
    
    //导航条的搜索条
    UISearchBar *searchBar = [UISearchBar new];
    searchBar.showsCancelButton = YES;
    [searchBar sizeToFit];
    UIView *barWrapper = [[UIView alloc]initWithFrame:searchBar.bounds];
    [barWrapper addSubview:searchBar];
//    searchBar.backgroundColor = [UIColor whiteColor];

    searchBar.searchBarStyle = UISearchBarStyleMinimal;
//         searchBar.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.titleView = barWrapper;
    
    
//    UIImage* image3 = [UIImage imageNamed:@"searchicon"];
//    CGRect frameimg = CGRectMake(0, 0, image3.size.width, image3.size.height);
//    UIButton *someButton = [[UIButton alloc] initWithFrame:frameimg];
//    [someButton setBackgroundImage:image3 forState:UIControlStateNormal];
//    [someButton addTarget:self action:@selector(myclick:)
//         forControlEvents:UIControlEventTouchUpInside];
//    [someButton setShowsTouchWhenHighlighted:YES];
//    
//    UIBarButtonItem *mailbutton =[[UIBarButtonItem alloc] initWithCustomView:someButton];
//    self.navigationItem.rightBarButtonItem=mailbutton;
//    
//self.navigationItem.titleView = self.searchBar;
    
    //----
    // create the magnifying glass button
//    self.searchButton = [[UIButton alloc] init];
//    // add button images, etc.
//    [_searchButton addTarget:self action:@selector(searchButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
//    
//    self.searchItem = [[UIBarButtonItem alloc] initWithCustomView:_searchButton];
//    self.navigationItem.rightBarButtonItem = _searchItem;
//    
//    self.searchBar = [[UISearchBar alloc] init];
//    _searchBar.showsCancelButton = YES;
//    _searchBar.delegate = self;
    
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
////    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"search" ofType:@"html" inDirectory:@"www"]];
////    [self.searchView setScalesPageToFit:YES];
////    [self.searchView loadRequest:[NSURLRequest requestWithURL:url]];
//    
//   
//}
//
///*
//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}
//*/
//- (void)searchButtonTapped:(id)sender {
//    
//    [UIView animateWithDuration:0.5 animations:^{
//        _searchButton.alpha = 0.0f;
//        
//    } completion:^(BOOL finished) {
//        
//        // remove the search button
//        self.navigationItem.rightBarButtonItem = nil;
//        // add the search bar (which will start out hidden).
//        self.navigationItem.titleView = _searchBar;
//        _searchBar.alpha = 0.0;
//        
//        [UIView animateWithDuration:0.5
//                         animations:^{
//                             _searchBar.alpha = 1.0;
//                         } completion:^(BOOL finished) {
//                             [_searchBar becomeFirstResponder];
//                         }];
//        
//    }];
//}
//
//#pragma mark UISearchBarDelegate methods
//- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
//    
//    [UIView animateWithDuration:0.5f animations:^{
//        _searchBar.alpha = 0.0;
//    } completion:^(BOOL finished) {
//        self.navigationItem.titleView = nil;
//        self.navigationItem.rightBarButtonItem = _searchItem;
//        _searchButton.alpha = 0.0;  // set this *after* adding it back
//        [UIView animateWithDuration:0.5f animations:^ {
//            _searchButton.alpha = 1.0;
//        }];
//    }];
//    
//}// called when cancel button pressed



@end

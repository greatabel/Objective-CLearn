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
    NSLog(@"name is: %@", p1.name);

    Byte *byteArray = (Byte[]){10, 192, 1, 208, 23, 125, 210, 55, 125, 212, 87, 125, 214, 119, 125, 216, 151, 125, 218, 183, 125, 220, 215, 125, 222, 247, 125, 224, 23, 126, 226, 55, 126, 228, 87, 126, 230, 119, 126, 232, 151, 126, 234, 183, 126, 236, 215, 126, 238, 247, 126, 240, 23, 127, 242, 55, 127, 244, 87, 127, 246, 119, 127, 248, 151, 127, 250, 183, 127, 252, 215, 127, 254, 247, 127, 0, 24, 128, 2, 56, 128, 4, 88, 128, 6, 120, 128, 8, 152, 128, 10, 184, 128, 12, 216, 128, 14, 248, 128, 16, 24, 129, 18, 56, 129, 20, 88, 129, 22, 120, 129, 24, 152, 129, 26, 184, 129, 28, 216, 129, 30, 248, 129, 32, 24, 130, 34, 56, 130, 36, 88, 130, 38, 120, 130, 40, 152, 130, 42, 184, 130, 44, 216, 130, 46, 248, 130, 48, 24, 131, 50, 56, 131, 52, 88, 131, 54, 120, 131, 56, 152, 131, 58, 184, 131, 60, 216, 131, 62, 248, 131, 64, 24, 132, 66, 56, 132, 68, 88, 132, 70, 120, 132, 72, 152, 132, 74, 184, 132, 76, 216, 132, 78, 248, 132, 16, 1, 24, 0};
    [Person pbDecodeMethod:byteArray];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

@end

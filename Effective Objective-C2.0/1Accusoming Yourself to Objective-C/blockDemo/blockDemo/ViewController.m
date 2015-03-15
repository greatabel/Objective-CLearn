//
//  ViewController.m
//  blockDemo
//
//  Created by abel on 15/3/14.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *alertResponseLabel;
@property (weak, nonatomic) IBOutlet UIButton *actionResponseLabel;

@end
//http://stackoverflow.com/questions/1033763/is-it-possible-to-update-uibutton-title-text-programmatically
//http://possiblemobile.com/2014/08/uialertcontroller-ios-8/
@implementation ViewController

- (IBAction)alertButtonTouched:(id)sender {
    // Alert style
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ALERT!" message:@"What will you do?" preferredStyle:UIAlertControllerStyleAlert];
    
    __weak ViewController *wself = self;
    
    // Make choices for the user using alert actions.
    UIAlertAction *doSomethingAction = [UIAlertAction actionWithTitle:@"I'm doing something" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        __strong ViewController *sself = wself;
        //self.alertResponseLabel.text = @"You did something!";
        [sself.alertResponseLabel setTitle: @"You did something!" forState: UIControlStateNormal];
       
    }];
    
    
    UIAlertAction *doNothingAction = [UIAlertAction actionWithTitle:@"I'm totally ignoring this" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        __strong ViewController *sself = wself;
//        self.alertResponseLabel.text = @"OK, just ignore me...";
        [sself.alertResponseLabel setTitle: @"OK, just ignore me" forState: UIControlStateNormal];
    }];
    
    // Add actions to the controller so they will appear
    [alert addAction:doSomethingAction];
    [alert addAction:doNothingAction];
    
    // Finally present the action
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)actionButtonTouched:(id)sender {
    // Action sheet style.
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"Evacuate Building!" message:@"" preferredStyle:UIAlertControllerStyleActionSheet];
    
    __weak ViewController *wself = self;
    
    UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:@"Kick through door" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        __strong ViewController *sself = wself;
//        sself.actionResponseLabel.text = @"Careful!";
        [sself.actionResponseLabel setTitle: @"Careful" forState: UIControlStateNormal];
    }];
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"Walk calmly" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        __strong ViewController *sself = wself;
//        sself.actionResponseLabel.text = @"Find nearest exit.";
        [sself.actionResponseLabel setTitle: @"Find nearest exit." forState: UIControlStateNormal];

    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Do nothing" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        __strong ViewController *sself = wself;
//        sself.actionResponseLabel.text = @"Just relax";
            [self.actionResponseLabel setTitle: @"Just relax" forState: UIControlStateNormal];
    }];
    
    [actionSheet addAction:destructiveAction];
    [actionSheet addAction:defaultAction];
    [actionSheet addAction:cancelAction];
    
    [self presentViewController:actionSheet animated:YES completion:nil];
}

- (void)viewDidLoad {
 
        

        
//    [super viewDidLoad];
    
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

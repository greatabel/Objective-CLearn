//
//  ViewController.h
//  TCPClient
//
//  Created by abel on 15/3/14.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreFoundation/CoreFoundation.h>
#include <sys/socket.h>
#include <netinet/in.h>

#define PORT 9000
@interface ViewController : UIViewController<NSStreamDelegate>{
    int flag;
}

@property (nonatomic,retain) NSInputStream *inputStream;

@property (nonatomic,retain) NSOutputStream *outputStream;


@property (weak, nonatomic) IBOutlet UILabel *message;

-(IBAction)sendData:(id)sender;
-(IBAction)receiveData:(id)sender;
@end


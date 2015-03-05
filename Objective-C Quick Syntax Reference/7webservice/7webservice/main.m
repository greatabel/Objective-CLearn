//
//  main.m
//  7webservice
//
//  Created by abel on 15/3/5.
//  Copyright (c) 2015年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
               @try {
            NSString *APILogin = @"请请入自己的";
            NSString *APIKey = @"输入自己的";
            NSString *longURL = @"https://mobileappmastery.com";
            NSString *requestString = [NSString stringWithFormat:@"http://api.bit.ly/shorten?version=2.0.1&longUrl=%@&login=%@&apiKey=%@&format=json", longURL,
                                       APILogin, APIKey];
            NSLog(@"rs=%@",requestString);
            NSURL *requestURL = [NSURL URLWithString:requestString];
            NSURLSession *session = [NSURLSession sharedSession];

            [[session dataTaskWithURL:requestURL
                    completionHandler:^(NSData *data,NSURLResponse *response,
                                        NSError *error) {
                        NSError *e = nil;
                        NSDictionary *bitlyJSON = [NSJSONSerialization
                                                   JSONObjectWithData:data options:0 error:&e];
                        
                        if(!error){
                            NSDictionary *results = [bitlyJSON objectForKey:@"results"];
                            NSDictionary *resultsForLongURL = [results objectForKey:longURL];
                            NSString *shortURL = [resultsForLongURL objectForKey:@"shortUrl"];
                            NSLog(@"shortURL = %@", shortURL);
                        } else
                            NSLog(@"There was an error parsing the JSON");
                        
                    }] resume];
        }
        @catch (NSException *exception) {
            NSLog(@"%@", exception.reason);
        }
        @finally {
            
        }

        
    

        
        
        sleep(60);
        
        
    }
    return 0;
}

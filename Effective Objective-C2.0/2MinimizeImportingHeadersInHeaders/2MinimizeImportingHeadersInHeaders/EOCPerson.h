//
//  EOCPerson.h
//  2MinimizeImportingHeadersInHeaders
//
//  Created by 万畅 on 15/7/25.
//  Copyright (c) 2015年 万畅. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EOCEmployer;

@interface EOCPerson : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;

@property (nonatomic,strong) EOCEmployer *employer;

-(void) Show:(NSString *)fristname :(NSString *)lastname;

@end

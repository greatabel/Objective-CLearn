//
//  Employee.h
//  ch3HR
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject
{
    
    NSString *firstName;
    NSString *lastName;
    NSDate *birthDate;
    NSDate *dateOfEmployment;
    Employee *manager;
    NSString *ssn;
    
    double salary;
}

@property(nonatomic,retain)NSString *firstName;
@property (nonatomic, retain) NSString * lastName;
@property(nonatomic,retain) NSDate *birthDate;
@property(nonatomic,retain)NSDate *dateOfEmployment;
@property (nonatomic, assign) Employee * manager;

//@property (unsafe_unretained) Employee * manager;
@property(nonatomic,retain)NSString *ssn;
@property(nonatomic,readonly)NSTimeInterval age;
@property(nonatomic)double salary;


-(id)initWithFirstName:(NSString *)inFirstName lastName:(NSString *)inLastName
             birthDate:(NSDate *)inBirthDate ssn:(NSString *)inSsn;
-(id)init;
-(void)giveRaise:(double)percentage;
-(double)bonus;


@end

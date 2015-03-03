//
//  Employee.m
//  ch3HR
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize firstName;
@synthesize lastName;
@synthesize birthDate;
@synthesize dateOfEmployment;
//@synthesize manager;
@dynamic manager;
@synthesize ssn;
@synthesize salary;
@synthesize age;




-(id)init;{
    if(self=[super init]){
        
    }
    return self;
}

-(id)initWithFirstName:(NSString *)inFirstName lastName:(NSString *)inLastName
             birthDate:(NSDate *)inBirthDate ssn:(NSString *)inSsn;
{
    
    if(self=[self init]){
        [self setFirstName:inFirstName];
        [self setLastName:inLastName];
        [self setBirthDate:inBirthDate];
        [self setSsn:inSsn];
    }
    return self;
}


-(NSTimeInterval)age;{
    
    return [birthDate timeIntervalSinceNow];
}

-(void)giveRaise:(double)percentage;{
    salary=salary+(salary*percentage);
}
-(double)bonus;{
    
    return salary*.05;
}



@end

//
//  main.m
//  ch3HR
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Employee *joeBlow = [[Employee alloc] initWithFirstName:@"Joe"
                                                       lastName:@"Blow"
                                                      birthDate:
                             [NSDate dateWithNaturalLanguageString:@"12/01/1990"]
                                                            ssn:@"555-12-1212"];
        Employee *johnDoe = [[Employee alloc] initWithFirstName:@"John"
                                                       lastName:@"Doe"
                                                      birthDate:
                             [NSDate dateWithNaturalLanguageString:@"11/01/1985"]
                                                            ssn:@"555-12-1212"];
        
        Manager *johnAppleseed = [[Manager alloc] initWithFirstName:@"John"
                                                           lastName:@"Appleseed"
                                                          birthDate:
                                  [NSDate dateWithNaturalLanguageString:@"11/01/1970"]
                                                                ssn:@"555-12-1212"];
        
        [johnAppleseed addReport:joeBlow];
        [johnAppleseed addReport:johnDoe];
        
        joeBlow.salary = 50000;
        johnDoe.salary = 75000;
        johnAppleseed.salary = 100000;
        
        NSMutableArray *allEmployees = [NSMutableArray array];
        [allEmployees addObject:joeBlow];
        [allEmployees addObject:johnDoe];
        [allEmployees addObject:johnAppleseed];
        
        for(Employee *employee in allEmployees)
        {
            [employee giveRaise:.10];
            NSLog(@"Employee %@ %@ now has a salary of: %.2f with a bonus of: %.2f",
                  employee.firstName, employee.lastName, employee.salary,
                  employee.bonus);
        }
        
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


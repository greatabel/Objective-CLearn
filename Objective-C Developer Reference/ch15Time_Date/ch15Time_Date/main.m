//
//  main.m
//  ch15Time_Date
//
//  Created by abel on 13-10-28.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now=[NSDate date];
        NSDate *alsoNow=[[NSDate alloc]init];
        
        //－－－－－－－ insert code here...
        NSString *dateStr = @"2012-02-05";
        
       //－－－－－－－  Convert string to date object
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@"yyyy-MM-dd"];
        NSDate *date = [dateFormat dateFromString:dateStr];
        
        //－－－－－－－  Convert date object to desired output format
        [dateFormat setDateFormat:@"EEEE MMMM d, YYYY"];
        dateStr = [dateFormat stringFromDate:date];  
        NSLog(@"%@",dateStr);
        dateStr = [dateFormat stringFromDate:now];
        NSLog(@"%@",dateStr);
        
        //－－－－－－－ 通过间隔创建日期
        NSDate *anHourAgo=[now dateByAddingTimeInterval:-3600];
        NSDate *anHourFromNow=[now dateByAddingTimeInterval:3600];
        dateStr = [dateFormat stringFromDate:anHourAgo];
        NSLog(@"an hour ago:%@",dateStr);
        dateStr = [dateFormat stringFromDate:now];
        NSLog(@"%@",anHourFromNow);
        
        //－－－－－－－ 日期比较
        NSTimeInterval timeBetween=[now timeIntervalSinceDate:anHourAgo];
        NSLog(@"%f",timeBetween);
        
        NSLog(@"%d",[now laterDate:anHourAgo]==now);
        NSLog(@"%d",[now earlierDate:anHourAgo]==now);
        NSLog(@"%d",[now compare:anHourAgo]==NSOrderedAscending);
        
        //－－－－－－－ calandar
        NSDateComponents *componentsA=[[NSDateComponents alloc]init];
        [componentsA setMonth:10];
        [componentsA setDay:28];
        [componentsA setYear:2013];
        NSCalendar *currentCalendar=[NSCalendar currentCalendar];
        NSDate *dateA=[currentCalendar dateFromComponents:componentsA];
        dateStr = [dateFormat stringFromDate:dateA];
        NSLog(@"%@",dateStr);
        
        //－－－－－－－ 相对时间callandar
        NSDate *today = [NSDate date];
        NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        [gregorian setLocale:[NSLocale currentLocale]];
        
        NSDateComponents *nowComponents = [gregorian components:NSYearCalendarUnit | NSWeekCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:today];
        
        [nowComponents setWeekday:2]; //Monday
        [nowComponents setWeek: [nowComponents week] + 1]; //Next week
        [nowComponents setHour:8]; //8a.m.
        [nowComponents setMinute:0];
        [nowComponents setSecond:0];
        
        NSDate *beginningOfWeek = [gregorian dateFromComponents:nowComponents];
        
        dateStr = [dateFormat stringFromDate:beginningOfWeek];
        NSLog(@"week after%@",dateStr);
        
        //－－－－－－－ 时区
        NSTimeZone *est=[NSTimeZone timeZoneWithAbbreviation:@"PST"];
        NSTimeZone *azZone=[NSTimeZone timeZoneWithName:@"Ameria/Arizona/Phix"];
        NSLog(@" %@ %@",est,azZone);
        
        //－－－－－－－ data format
        NSDateFormatter *f=[[NSDateFormatter alloc]init];
        [f setDateStyle:NSDateFormatterShortStyle];
        [ f setDateFormat:@"yyyy-MM-dd"];
        NSDate *dateC=[f dateFromString:@"2013-10-10"];
        dateStr = [dateFormat stringFromDate:dateC];
        NSLog(@"f %@",dateStr);
        
        
        
        
        
        
        
        
    }
    
    
    return 0;
}


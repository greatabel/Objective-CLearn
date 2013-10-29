//
//  main.m
//  ch13set
//
//  Created by abel on 13-10-28.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *array=[NSArray arrayWithObjects:@"Abel", @"want",@"to",@"test",@".",nil];
        NSLog(@"%@",array);
        
        for(NSString *item in array){
            NSLog(@"->%@",item);
        }
        for(NSInteger n=0;n<[array count];n++){
            NSLog(@"#%@ ",[array objectAtIndex:n]);
        }
        
        NSEnumerator *enumerator=[array objectEnumerator];
        NSString *item=nil;
        while(item=[enumerator nextObject]){
            NSLog(@" %@ ",item);
        }
        //找出一组对象
        NSRange range;
        range.location=1;
        range.length=3;
        NSIndexSet *indexSet=[NSIndexSet indexSetWithIndexesInRange:range];
        NSArray *subItems=[array objectsAtIndexes:indexSet];
        NSLog(@"%@",subItems);
        
        
        
        // 字典
        NSDictionary *dict;
        NSArray* values = [NSArray arrayWithObjects:@"values1",@"values2",@"values3", nil];
        NSArray* keys = [NSArray arrayWithObjects:@"key1",@"key2",@"key3", nil];
         dict = [[NSDictionary alloc] initWithObjects:values forKeys:keys];
                                          
           NSLog(@"%@",dict);

        for(id mykey in dict)
        {
            NSObject* obj = [dict objectForKey:mykey];
            NSLog(@"%@ = %@",mykey,obj);
        }
        NSArray *objects=[dict allValues];
        for(NSString *obj in objects){
            NSLog(@"#%@",obj);
        }
        
        
        
        //集合
        NSSet *set=[NSSet setWithObjects:@"I",@"want",@"to",@"learn",@"it", nil];
        NSLog(@"%@",set);
        NSLog(@"%@",[set member:@"want"]);
        NSLog(@"%@",[set anyObject]);
        NSLog(@"%@",[set allObjects]);
        NSLog(@"%hhd",[set containsObject:@"want"]);
        NSLog(@"%hhd",[set containsObject:@"haha"]);
        for(NSString *item in set){
            NSLog(@">%@",item);
        }
        NSEnumerator *enumeratorSet=[set objectEnumerator];
        NSString *itemSet=nil;
        while(itemSet=[enumeratorSet nextObject]){
            NSLog(@"%@",itemSet);
        }
        
        //排序1 sortedArrayUsingComparator
        NSLog(@"排序!");
        NSArray *sortedArray = [array sortedArrayUsingComparator:
                                ^NSComparisonResult(id obj1, id obj2) {
                                    if ([obj1 length] < [obj2 length]) {
                                        return NSOrderedAscending;
                                    } else if ([obj1 length] > [obj2 length]) {
                                        return NSOrderedDescending;
                                    } else {
                                        return NSOrderedSame;
                                    }
                                }];
        NSLog(@"%@",sortedArray);
        
        //排序2:sortedUsingDescriptors
        NSDictionary *car1 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Golf",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"18750.00"]
                               };
        NSDictionary *car2 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Eos",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"35820.00"]
                               };
        NSDictionary *car3 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Jetta A5",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"16675.00"]
                               };
        NSDictionary *car4 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Jetta A4",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"16675.00"]
                               };
        NSMutableArray *cars=[NSMutableArray arrayWithObjects:
                              car1,car2,car3,car4,nil];
        NSSortDescriptor *priceDescriptor=[NSSortDescriptor
                                           sortDescriptorWithKey:@"price" ascending:YES
                                           selector:@selector(compare:)];
        NSSortDescriptor *modelDescriptor=[NSSortDescriptor
                                           sortDescriptorWithKey:@"model" ascending:YES
                                           selector:@selector(caseInsensitiveCompare:)];
        NSArray *descriptors=@[priceDescriptor,modelDescriptor];
        [cars sortUsingDescriptors:descriptors];
        NSLog(@"%@",cars);
        
        
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


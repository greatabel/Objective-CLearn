//
//  main.m
//  ch6KVC
//
//  Created by abel on 13-10-25.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

#import "MyPoint.h"
#import "Observer.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");

        Character *sakura;
        Character *shaoran;
        
        //Create and give the properties some values with KVC...
        sakura = [[Character alloc] init];
        [sakura setValue:@"Sakura Kinomoto" forKey:@"characterName"];
        [sakura setValue:[NSNumber numberWithInt:20] forKey:@"ownedClowCards"];
        
        shaoran = [[Character alloc] init];
        [shaoran setValue:@"Li Shaoran" forKey:@"characterName"];
        [shaoran setValue:[NSNumber numberWithInt:21] forKey:@"ownedClowCards"];
        
        //Done! Now we are going to fetch the values using KVC.
        
        NSString *mainCharacter = [sakura valueForKey:@"characterName"];
        NSNumber *mainCharCards = [sakura valueForKey:@"ownedClowCards"];
        
        NSString *rival = [shaoran valueForKey:@"characterName"];
        NSNumber *rivalCards = [shaoran valueForKey:@"ownedClowCards"];
        
        NSLog(@"%@ has %d Clow Cards", mainCharacter, [mainCharCards intValue]);
        NSLog(@"%@ has %d Clow Cards", rival, [rivalCards intValue]);
        
        
        [sakura addObserver:sakura forKeyPath:@"ownedClowCards" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];

        [sakura removeObserver:sakura forKeyPath:@"ownedClowCards"];

        //other example
        MyPoint *point =[[MyPoint alloc]init];
        Observer *observer=[[Observer alloc]initWithPoint:point];
        point.x=44.4;
        point.y=55.5;
        
        point.x=111.1;
        point.y=222.2;
        
        
    }
    return 0;
}


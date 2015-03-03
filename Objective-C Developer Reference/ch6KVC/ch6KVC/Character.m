//
//  Character.m
//  ch6KVC
//
//  Created by abel on 13-10-25.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import "Character.h"

@implementation Character

@synthesize characterName;
@synthesize ownedClowCards;

-(void)hasLostClowCard
{
    NSLog(@"%@ has lost a card! Cards now: %ld", characterName, ownedClowCards);

}

-(void)hasGainedClowCard
{
    NSLog(@"%@ has earned a card! Cards now: %ld", characterName, ownedClowCards);
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if([keyPath isEqualToString:@"ownedClowCards"])
    {
        NSInteger oldC = [change objectForKey:NSKeyValueChangeOldKey];
        NSInteger newC = [change objectForKey:NSKeyValueChangeNewKey];
        if(oldC < newC)
        {
            [self hasLostClowCard];
        }else
        {
            [self hasGainedClowCard];
        }
    }
}

@end

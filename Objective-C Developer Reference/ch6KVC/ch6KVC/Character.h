//
//  Character.h
//  ch6KVC
//
//  Created by abel on 13-10-25.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject
{
    NSString *characterName;
    NSInteger ownedClowCards;
}
@property (nonatomic, copy) NSString *characterName;
@property NSInteger ownedClowCards;
-(void)hasLostClowCard;
-(void)hasGainedClowCard;
-(void)observeValueForKeyPath;
@end

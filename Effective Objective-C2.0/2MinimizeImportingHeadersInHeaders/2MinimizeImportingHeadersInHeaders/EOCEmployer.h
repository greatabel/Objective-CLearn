//
//  EOCEmployee.h
//  2MinimizeImportingHeadersInHeaders
//
//  Created by 万畅 on 15/7/25.
//  http://blog.teamtreehouse.com/beginners-guide-objective-c-classes-objects
//

#import <Foundation/Foundation.h>

@class EOCPerson;


@interface EOCEmployer : NSObject

@property NSString *name;

/*
 测试循环引用
 */
-(void)addEmployee:(EOCPerson*)person;
-(void)removeEmployee:(EOCPerson*)person;

-(void) instanceMethod;
+(void) ClassMethod:(NSString *)name;
@end

//
//  RequestTests.m
//  RequestTests
//
//  Created by Marco Velluto on 22/03/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import "RequestTests.h"
#import "Request.h"
#import <UIKit/UIKit.h>

@implementation RequestTests

- (void)setUp
{
    [super setUp];
    [self uniqueId2];
    NSString *str = [self testGenerateUuidString];
    [Request requestWithDomain:nil withProducerId:nil withEventCode:nil andEventDetails:nil];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    STFail(@"Unit tests are not implemented yet in RequestTests");
}


-(NSString *)uniqueId2 {
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"CACCA", @"KEY", nil];
    
    NSUserDefaults *userDefault = [[NSUserDefaults alloc] init];
    userDefault = [NSUserDefaults standardUserDefaults];
    
    [userDefault setObject:@"PUPU" forKey:@"KEY_PUPU"];
    
    NSString *str = [userDefault stringForKey:@"KEY_PUPU"];
    return str;
}

- (NSString *)testGenerateUuidString {
    
    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
    
    NSString *uuidStr = (NSString *)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, uuid));
    
    CFRelease(uuid);
    return uuidStr;
}

@end

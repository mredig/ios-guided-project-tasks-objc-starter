//
//  TasksTests.m
//  TasksTests
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSITask.h"

@interface TasksTests : XCTestCase

@end

@implementation TasksTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testTaskInit {
	LSITask* task = [[LSITask alloc] initWithName:@"Bake a cake"
											notes:@"Find a recipe and bake cake tomorrow"
											 date:[NSDate date]];

	NSLog(@"Task: %@", task.name);
}

@end

//
//  LSITaskController.m
//  Tasks
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskController.h"

//Class extension
@interface LSITaskController() {

}
@property NSMutableArray* tasks;

@end

@implementation LSITaskController

- (instancetype)init {
	if (self = [super init]) {
		_tasks = [NSMutableArray array];
	}
	return self;
}

- (void)addTask:(LSITask *)task {
	[self.tasks addObject:task];
}

- (void)removeTask:(LSITask *)task {
	[self.tasks removeObject:task];
}

- (NSUInteger)count {
	return self.tasks.count;
}

- (LSITask *)taskAtIndex:(NSUInteger)index {
	if (index >= self.tasks.count) {
		return nil;
	}
	return self.tasks[index];
}

@end

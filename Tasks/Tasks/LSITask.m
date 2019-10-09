//
//  LSITask.m
//  Tasks
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITask.h"

@implementation LSITask

- (instancetype)initWithName:(NSString *)name notes:(NSString *)notes date:(NSDate *)date {
	if (self = [super init]) {
		_name = name;
		_notes = notes;
		_date = date;
	}
	return self;
}

@end

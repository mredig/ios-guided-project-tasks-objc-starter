//
//  NSArray+SentenceGeneration.m
//  Tasks
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "NSArray+SentenceGeneration.h"


//Category (like swift extension on existing class)
@implementation NSArray (SentenceGeneration)

- (NSString*)sentenceFromArray {
	return [self componentsJoinedByString:@" "];
}

@end

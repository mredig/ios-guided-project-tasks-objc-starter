//
//  LSITask.h
//  Tasks
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSITask : NSObject

@property NSString* name;
@property NSString* notes;
@property NSDate* date;


- (instancetype)initWithName:(NSString*)name
					   notes:(NSString*) notes
						date:(NSDate*) date;

@end




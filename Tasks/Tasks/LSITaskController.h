//
//  LSITaskController.h
//  Tasks
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSITask;

@interface LSITaskController : NSObject

- (void)addTask:(LSITask*)task;
- (void)removeTask:(LSITask*)task;
- (NSUInteger)count;
- (LSITask*)taskAtIndex:(NSUInteger)index;

@end

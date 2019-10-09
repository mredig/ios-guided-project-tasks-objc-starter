//
//  LSITasksTableViewController.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITasksTableViewController.h"
#import "LSITaskController.h"
#import "LSITask.h"
#import "LSITaskDetailViewController.h"

@interface LSITasksTableViewController ()

@property (nonatomic, readonly) NSDateFormatter *dateFormatter;

@end

@implementation LSITasksTableViewController

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.tableView reloadData];
}

- (LSITaskController *)taskController {
	if (!_taskController) {
		_taskController = [[LSITaskController alloc] init];
		[self createTestData];
	}
	return _taskController;
}

- (void)createTestData {
    LSITask *task = [[LSITask alloc] initWithName:@"Walk the dog" notes:@"Walk 3 miles" date:[NSDate dateWithTimeIntervalSinceNow:60]];

    LSITask *task2 = [[LSITask alloc] initWithName:@"Eat lunch" notes:@"Make a sandwich" date:[NSDate date]];

    [self.taskController addTask:task];
    [self.taskController addTask:task2];
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.taskController.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];

	LSITask* task = [self.taskController taskAtIndex:indexPath.row];

	cell.textLabel.text = task.name;
	cell.detailTextLabel.text = [self.dateFormatter stringFromDate:task.date];
	return cell;
}

// MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

	if ([segue.identifier isEqualToString:@"ShowTaskDetail"]) {
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		LSITaskDetailViewController* detailVC = segue.destinationViewController;
		detailVC.taskController = self.taskController;
		LSITask* task = [self.taskController taskAtIndex:indexPath.row];
		detailVC.task = task;
	}

	if ([segue.identifier isEqualToString:@"ShowCreateTask"]) {
		LSITaskDetailViewController* detailVC = segue.destinationViewController;
		detailVC.taskController = self.taskController;
	}
}

// MARK: - Properties

@synthesize dateFormatter = _dateFormatter;
- (NSDateFormatter *)dateFormatter
{
    if (!_dateFormatter) {
        _dateFormatter = [[NSDateFormatter alloc] init];
        _dateFormatter.dateStyle = NSDateFormatterShortStyle;
        _dateFormatter.timeStyle = NSDateFormatterNoStyle;
    }
    return _dateFormatter;
}

@end

//
//  LSITaskDetailViewController.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskDetailViewController.h"

@interface LSITaskDetailViewController ()

@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutlet UISegmentedControl *priorityControl;
@property (nonatomic, strong) IBOutlet UITextView *notesTextView;
@property (nonatomic, strong) IBOutlet UIDatePicker *datePicker;

@end

@implementation LSITaskDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self updateViews];
}

// MARK: - Actions

- (IBAction)save:(id)sender {

}

// MARK: - Private

- (void)updateViews {
    
}

// MARK: - Properties



@end

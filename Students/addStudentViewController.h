//
//  addStudentViewController.h
//  Students
//
//  Created by Noorashikeen Wan on 4/9/12.
//  Copyright (c) 2012 TMR&D. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddStudentViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;

- (IBAction)cancelBtnPressed:(UIButton *)button;
- (IBAction)saveBtnPressed:(UIButton *)sender;

@end

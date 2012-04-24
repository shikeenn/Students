//
//  studentViewController.h
//  Students
//
//  Created by Noorashikeen Wan on 4/9/12.
//  Copyright (c) 2012 TMR&D. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentViewController : UITableViewController{
    
    NSMutableArray *cellData;
}
- (void)addStudent:(UIBarButtonItem *)button;

@end

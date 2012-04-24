//
//  AppDelegate.h
//  Students
//
//  Created by Noorashikeen Wan on 4/9/12.
//  Copyright (c) 2012 TMR&D. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController, StudentViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) StudentViewController *studentViewController;

@end

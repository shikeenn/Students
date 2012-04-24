//
//  addStudentViewController.m
//  Students
//
//  Created by Noorashikeen Wan on 4/9/12.
//  Copyright (c) 2012 TMR&D. All rights reserved.
//

#import "AddStudentViewController.h"


@interface AddStudentViewController ()

@end

@implementation AddStudentViewController

@synthesize nameTextField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setNameTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)cancelBtnPressed:(UIButton *)button 
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)saveBtnPressed:(id)sender {
    NSString *name = nameTextField.text;
     
    // save/write to students.plist
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *path = [documentDirectory stringByAppendingPathComponent:@"students.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    
    // if file doesnt exist copy students.plist in mainBundle to document path.
    if (![fileManager fileExistsAtPath:path]) {
        NSString *bundle = [[NSBundle mainBundle] pathForResource:@"students" ofType:@"plist"];
        
        [fileManager copyItemAtPath:bundle toPath:path error:&error];
    }
    
    NSMutableDictionary *savedName = [[ NSMutableDictionary alloc] initWithContentsOfFile:path];
    [savedName setObject:name forKey:@"students"];
    [savedName writeToFile:path atomically:YES];
    [savedName release];
}


- (void)dealloc {
    [nameTextField release];
    [super dealloc];
}
@end

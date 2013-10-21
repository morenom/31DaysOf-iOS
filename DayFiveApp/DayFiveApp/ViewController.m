//
//  ViewController.m
//  DayFiveApp
//
//  Created by Chris Risner on 9/5/12.
//  Copyright (c) 2012 31DaysOfiOSt. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblInfo;
@synthesize txtText;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLblInfo:nil];
    [self setTxtText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)tappedClickMe:(id)sender {
    lblInfo.text = txtText.text;
}

- (IBAction)tappedNavButton:(id)sender {
    SecondViewController *secondViewController =     [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (IBAction)tappedShowNewView:(id)sender {
    SecondViewController *secondViewController =
        [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self presentModalViewController:secondViewController animated:YES];
}
@end

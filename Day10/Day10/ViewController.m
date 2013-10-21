//
//  ViewController.m
//  Day10
//
//  Created by Miguel Moreno on 17/10/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize labelOne;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLabelOne:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)tappedLoad:(id)sender {
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [self.labelOne setText:delegate.info];
}

- (IBAction)tappedSave:(id)sender {
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    delegate.info = @"Some text!";
}

@end

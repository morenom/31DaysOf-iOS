//
//  SecondViewController.m
//  DayFiveApp
//
//  Created by Chris Risner on 9/26/12.
//  Copyright (c) 2012 31DaysOfiOSt. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tappedCloseModal:(id)sender {
     [self dismissModalViewControllerAnimated: YES];
//    [self.navigationController popViewControllerAnimated:YES];
}
@end

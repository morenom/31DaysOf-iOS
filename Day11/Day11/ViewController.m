//
//  ViewController.m
//  Day11
//
//  Created by Miguel Moreno on 17/10/2013.
//  Copyright (c) 2013 Miguel Moreno. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tappedLoadData:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.labelInfo.text = [defaults objectForKey:@"infoString"];
}

- (IBAction)tappedSaveData:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:@"My Saved Data" forKey:@"infoString"];
}
@end

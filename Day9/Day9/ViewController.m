//
//  ViewController.m
//  Day9
//
//  Created by Miguel Moreno on 17/10/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize button;
@synthesize textView;
@synthesize textFieldTwo;
@synthesize textFieldOne;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextFieldOne:nil];
    [self setTextFieldTwo:nil];
    [self setTextView:nil];
    [self setButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField == self.textFieldOne) {
        textField.text = @"Don't edit me!";
    }
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if (textField == self.textFieldTwo && [textField.text isEqualToString:@"No Change"]) {
        return NO;
    }
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    if (textField == self.textFieldOne && [textField.text isEqualToString:@"done"]) {
        return NO;
    }
    return YES;
}

- (BOOL)textView:(UITextView *)txtView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if (txtView == self.textView) {
        NSInteger newTextLength = [txtView.text length] - range.length + [text length];
        if (newTextLength > 45) {
            return NO;
        }
    }
    return YES;
}

- (IBAction)tappedButton:(id)sender {
}
@end

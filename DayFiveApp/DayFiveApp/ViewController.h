//
//  ViewController.h
//  DayFiveApp
//
//  Created by Chris Risner on 9/5/12.
//  Copyright (c) 2012 31DaysOfiOSt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblInfo;
@property (weak, nonatomic) IBOutlet UITextField *txtText;
- (IBAction)tappedClickMe:(id)sender;
- (IBAction)tappedNavButton:(id)sender;
- (IBAction)tappedShowNewView:(id)sender;

@end

//
//  ViewController.h
//  Day10
//
//  Created by Miguel Moreno on 17/10/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
- (IBAction)tappedLoad:(id)sender;
- (IBAction)tappedSave:(id)sender;

@end

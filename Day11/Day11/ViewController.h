//
//  ViewController.h
//  Day11
//
//  Created by Miguel Moreno on 17/10/2013.
//  Copyright (c) 2013 Miguel Moreno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelInfo;
- (IBAction)tappedLoadData:(id)sender;
- (IBAction)tappedSaveData:(id)sender;

@end

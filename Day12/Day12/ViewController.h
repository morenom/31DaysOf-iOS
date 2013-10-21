//
//  ViewController.h
//  Day12
//
//  Created by Miguel Moreno on 18/10/2013.
//  Copyright (c) 2013 Miguel Moreno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) NSManagedObjectContext* managedObjectContext;

- (IBAction)tappedPrevious:(id)sender;
- (IBAction)tappedNext:(id)sender;
- (IBAction)tappedLoadData:(id)sender;
- (IBAction)tappedSaveAsNew:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblUpdateDate;
@property (weak, nonatomic) IBOutlet UILabel *lblCreateDate;
@property (weak, nonatomic) IBOutlet UITextField *txtNumber;
@property (weak, nonatomic) IBOutlet UITextField *txtInfo;
@property (weak, nonatomic) IBOutlet UITextField *txtName;

@end

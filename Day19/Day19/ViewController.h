//
//  ViewController.h
//  Day19
//
//  Created by Miguel Moreno on 18/10/2013.
//  Copyright (c) 2013 Miguel Moreno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "CoreLocationController.h"

@interface ViewController : UIViewController <CoreLocationControllerDelegate, MKMapViewDelegate>
- (IBAction)tappedCenter:(id)sender;
- (IBAction)tappedRemove:(id)sender;
- (IBAction)tappedAdd:(id)sender;
@property (weak, nonatomic) IBOutlet MKMapView *map;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (nonatomic, retain) CoreLocationController *locationController;

@end

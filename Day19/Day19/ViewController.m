//
//  ViewController.m
//  Day19
//
//  Created by Miguel Moreno on 18/10/2013.
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
    self.map.showsUserLocation = YES;
    self.map.delegate = self;
    self.locationController = [[CoreLocationController alloc] init];
	self.locationController.delegate = self;
	[self.locationController.locationManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}		

- (void)update:(CLLocation *)location {
    self.labelOne.text= [NSString stringWithFormat:@"Latitude: %f", [location coordinate].latitude];
    self.labelTwo.text = [NSString stringWithFormat:@"Longitude: %f", [location coordinate].longitude];
}

- (void)locationError:(NSError *)error {
    self.labelOne.text = [error description];
    self.labelTwo.text = nil;
}

- (IBAction)tappedRemove:(id)sender {
    for (id annotation in self.map.annotations)
        if (![annotation isKindOfClass:[MKUserLocation class]]) {
            [self.map removeAnnotation:annotation];
        }
}

- (IBAction)tappedAdd:(id)sender {
    
    CLLocationCoordinate2D mapPoint;
    mapPoint.longitude = self.locationController.locationManager.location.coordinate.longitude;;
    mapPoint.latitude = self.locationController.locationManager.location.coordinate.latitude;;
    
    MKPointAnnotation *anny = [[MKPointAnnotation alloc] init];
    anny.coordinate = mapPoint;
    anny.title = @"Annotation description";
    anny.subtitle = @"Annotation subtitle";
    [self.map addAnnotation:anny];
}
@end

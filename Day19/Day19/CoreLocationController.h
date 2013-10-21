//
//  CoreLocationController.h
//  Day19
//
//  Created by Miguel Moreno on 18/10/2013.
//  Copyright (c) 2013 Miguel Moreno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol CoreLocationControllerDelegate
@required
-(void)update:(CLLocation *)location;
-(void)locationError:(NSError *)error;

@end

@interface CoreLocationController : NSObject
@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, retain) id delegate;

@end

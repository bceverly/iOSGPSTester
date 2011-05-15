//
//  iOSGPSTesterAppDelegate_iPhone.m
//  iOSGPSTester
//
//  Created by Bryan Everly on 5/15/11.
//  Copyright 2011 BCE Associates, Inc. All rights reserved.
//

#import "iOSGPSTesterAppDelegate_iPhone.h"

@implementation iOSGPSTesterAppDelegate_iPhone

- (id)init {
    self = [super init];
    
    if(self != nil) {
        self.locMgr = [[[CLLocationManager alloc] init] autorelease]; // Create new instance of locMgr
        self.locMgr.delegate = self; // Set the delegate as self.
    }
    
    [locMgr startUpdatingLocation];
    locMgr.desiredAccuracy = 1;
    
    return self;
}


- (void)dealloc
{
    [currentLatitude release];
    [currentLongitude release];
    [currentAltitude release];
    [xyAccuracy release];
    [zAccuracy release];
	[super dealloc];
}

- (void)locationManager:(CLLocationManager *)manager 
    didUpdateToLocation:(CLLocation *)newLocation 
           fromLocation:(CLLocation *)oldLocation 
{
    CLLocationCoordinate2D pos = [newLocation coordinate];

    double altitude = [newLocation altitude];
    double longitude = pos.longitude;
    double latitude = pos.latitude;
    
    double horizontalAccuracy = [newLocation horizontalAccuracy];
    double verticalAccuracy = [newLocation verticalAccuracy];

    NSString *nsAltitude = [[NSString alloc]initWithFormat:@"%f", altitude];
    NSString *nsLongitude = [[NSString alloc]initWithFormat:@"%f", longitude];
    NSString *nsLatitude = [[NSString alloc]initWithFormat:@"%f", latitude];
    NSString *nsXYAccuracy = [[NSString alloc]initWithFormat:@"%f", horizontalAccuracy];
    NSString *nsZAccuracy = [[NSString alloc]initWithFormat:@"%f", verticalAccuracy];
    
    [currentAltitude setText:nsAltitude];
    [currentLongitude setText:nsLongitude];
    [currentLatitude setText:nsLatitude];
    [xyAccuracy setText:nsXYAccuracy];
    [zAccuracy setText:nsZAccuracy];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"didFailWithError: %@", error);
}

@end

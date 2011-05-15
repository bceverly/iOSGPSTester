//
//  iOSGPSTesterAppDelegate.h
//  iOSGPSTester
//
//  Created by Bryan Everly on 5/15/11.
//  Copyright 2011 BCE Associates, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface iOSGPSTesterAppDelegate : NSObject <UIApplicationDelegate> {
    CLLocationManager *locMgr;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) CLLocationManager *locMgr;

@end

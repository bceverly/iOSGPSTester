//
//  iOSGPSTesterAppDelegate_iPhone.h
//  iOSGPSTester
//
//  Created by Bryan Everly on 5/15/11.
//  Copyright 2011 BCE Associates, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "iOSGPSTesterAppDelegate.h"
#import "AccuracyBarView.h"

@interface iOSGPSTesterAppDelegate_iPhone : iOSGPSTesterAppDelegate<CLLocationManagerDelegate> {
    IBOutlet UILabel *currentLatitude;
    IBOutlet UILabel *currentLongitude;
    IBOutlet UILabel *currentAltitude;

    IBOutlet UILabel *xyAccuracy;
    IBOutlet UILabel *zAccuracy;
    AccuracyBarView *xyAccuracyBarView;
    AccuracyBarView *zAccuracyBarView;
}
@property (nonatomic, retain) IBOutlet AccuracyBarView *xyAccuracyBarView;
@property (nonatomic, retain) IBOutlet AccuracyBarView *zAccuracyBarView;

@end

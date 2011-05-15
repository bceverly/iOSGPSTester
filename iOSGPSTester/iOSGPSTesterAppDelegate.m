//
//  iOSGPSTesterAppDelegate.m
//  iOSGPSTester
//
//  Created by Bryan Everly on 5/15/11.
//  Copyright 2011 BCE Associates, Inc. All rights reserved.
//

#import "iOSGPSTesterAppDelegate.h"

@implementation iOSGPSTesterAppDelegate

@synthesize window=_window;
@synthesize locMgr;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [locMgr stopUpdatingLocation];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [locMgr startUpdatingLocation];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [locMgr startUpdatingLocation];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end

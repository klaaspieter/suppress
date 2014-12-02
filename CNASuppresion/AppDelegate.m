//
//  AppDelegate.m
//  CNASuppresion
//
//  Created by Klaas Pieter Annema on 22/10/14.
//  Copyright (c) 2014 Klaas Pieter Annema. All rights reserved.
//

#import "AppDelegate.h"

@import SystemConfiguration.CaptiveNetwork;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Clears the SSIDs
//    CNSetSupportedSSIDs(CFArrayCreate(NULL, NULL, 0, &kCFTypeArrayCallBacks));

    // Registers the SSID.
    CFStringRef strs[1];
    strs[0] = CFSTR("Karma Wi-Fi");
    CNSetSupportedSSIDs(CFArrayCreate(NULL, (void *)strs, 1, &kCFTypeArrayCallBacks));

    return YES;
}

@end

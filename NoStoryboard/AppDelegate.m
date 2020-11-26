//
//  AppDelegate.m
//  NoStoryboard
//
//  Created by Joan Barrull on 25/11/2020.
//  Copyright © 2020 Joan Barrull. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.rootViewController = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
    
    [_window makeKeyAndVisible];
    
    return YES;
}





@end

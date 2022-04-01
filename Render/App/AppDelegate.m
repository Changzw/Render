//
//  AppDelegate.m
//  Render
//
//  Created by Fri on 2022/3/31.
//

#import "AppDelegate.h"
#import "ContentViewController.h"

@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
  self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[ContentViewController alloc] init]];
  [self.window makeKeyAndVisible];
  return YES;
}

@end

# How to create an Obj-C project without storyboards


When we create a new project, XCode will create by default a lot of code related to storyboards and Scenes, but sometimes we just want to 
work on xibs.
In this tutorial we will create a new project, and get rid of all storyboard-related classes in order to work without any storyboard or scene.

First we will create a new project in Xcode using the usual way: File - New Project

<image src="images/newProject.png" width="500" />
  
We will have the following files:

<image src="images/files.png" />


 First, we will remove the files:
-  Main.storyboard
- SceneDelegate.h
- SceneDelegate.m

Then we will edit the Info.plist file. We will remove the nodes:
- "Application Scene Manifest"
- "Launch screen interface base name"
- "Main storyboard file base name"

<image src="images/infoplist.png" />



Now we will create a new file RooViewController, this will be initial screen:

<image src="images/newFile.png" width=500/>

Then we will edit the file AppDelegate.h, we will add an import and add a property:

````
#import <UIKit/UIKit.h>
#import "RootViewController.h"



@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@end
````

We will also edit the AppDelegate.m:
```
#import "RootViewController.h"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
       _window.rootViewController = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
       
       [_window makeKeyAndVisible];
    
    return YES;
}
```




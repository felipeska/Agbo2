//
//  FCBAppDelegate.m
//  Agbo2
//
//  Created by WTFCALDERON on 6/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import "FCBAppDelegate.h"
#import "FCBCharacterModel.h"
#import "FCBChararterViewController.h"
#import "FCBWikiViewController.h"

@implementation FCBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //Creamos un modelo
    
    NSURL *vaderURL =[NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
    NSData *vaderSound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"vader" withExtension:@"caf"]];
    UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg" ];
    
    FCBCharacterModel *vader = [FCBCharacterModel  characterModelWhitFirstName:@"anakin"
                                                                      lastName:@"SkyWalker"
                                                                         alias:@"Darth Vader"
                                                                    wikiPage:vaderURL
                                                                     soundData:vaderSound
                                                                         photo:vaderImage];
    
    //Creamos un controlaoor
    //FCBChararterViewController *charVC = [[FCBChararterViewController alloc] initWithModel:vader];
    
    //Lo mostramos en pantalla
    //[[self window] setRootViewController:charVC];
    
    FCBWikiViewController * wikiVC = [[FCBWikiViewController alloc] initWithModel:vader];
    
    [[self window] setRootViewController:wikiVC];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor greenColor];
    [self.window makeKeyAndVisible];
    return YES;
    
    //La app inicia
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    // La app recibe una interrupción
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    //La app entra en segundo plano
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    //La app vuelve a primer plano
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
    // La app es asesinada por el sistema operativo
}

@end

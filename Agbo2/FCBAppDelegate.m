//
//  FCBAppDelegate.m
//  Agbo2
//
//  Created by WTFCALDERON on 6/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import "FCBAppDelegate.h"
#import "FCBCharacterModel.h"
#import "FCBCharacterModels.h"
#import "FCBCharactersViewController.h"
#import "FCBWikiViewController.h"

@implementation FCBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //Configure Appearance
    [self configureAppearance];
    
    //Creamos el Modelo
    FCBCharacterModels * model = [FCBCharacterModels new];
    
    //Creamos un Controlador
    FCBCharactersViewController * charsVC = [[FCBCharactersViewController alloc] initWithStyle:UITableViewStylePlain model:model];
    
    //Creamos el Combinador
    UINavigationController *naVC = [[UINavigationController alloc] init];
    [naVC pushViewController:charsVC animated:YES];
    
    //Mostramos en pantalla
    self.window.rootViewController = naVC;
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

#pragma mark -Utilities

-(void) configureAppearance{
    UIColor *darkBLue = [UIColor colorWithRed:0 green:0 blue:0.15 alpha:1];
    [[UINavigationBar appearance] setTintColor:darkBLue];
}

@end

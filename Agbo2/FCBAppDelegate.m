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
    
    //Configure Appearance
    
    //Creamos el combinador
    UITabBarController *taVC = [[UITabBarController alloc] init];
    [taVC setViewControllers: [self arrayOfControls]];
    //Mostramos un new
    [[self window] setRootViewController:taVC];
    
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

-(NSArray *) arrayModels{
    
    //Darth Vader
    
    NSURL *vaderURL =[NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
    NSData *vaderSound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"vader" withExtension:@"caf"]];
    UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg" ];
    FCBCharacterModel *vader = [FCBCharacterModel  characterModelWhitFirstName:@"anakin"
                                                                      lastName:@"SkyWalker"
                                                                         alias:@"Darth Vader"
                                                                      wikiPage:vaderURL
                                                                     soundData:vaderSound
                                                                         photo:vaderImage];
    //C-3PO
    NSURL *c3poURL =[NSURL URLWithString:@"http://en.wikipedia.org/wiki/C-3PO"];
    NSData *c3poSound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"c3po" withExtension:@"caf"]];
    UIImage *c3poImage = [UIImage imageNamed:@"c3po.jpg" ];
    FCBCharacterModel *c3po = [FCBCharacterModel  characterModelWhiAlias:@"C-3PO"
                                                                wikiPage:c3poURL
                                                               soundData:c3poSound
                                                                   photo:c3poImage];
    
    //chewbacca
    NSURL *chewbaccaURL =[NSURL URLWithString:@"http://en.wikipedia.org/wiki/Chewbacca"];
    NSData *chewbaccaSound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"chewbacca" withExtension:@"caf"]];
    UIImage *chewbaccaImage = [UIImage imageNamed:@"chewbacca.jpg" ];
    
    FCBCharacterModel *chewbacca = [FCBCharacterModel  characterModelWhiAlias:@"chewbacca"
                                                                     wikiPage:chewbaccaURL
                                                                    soundData:chewbaccaSound
                                                                        photo:chewbaccaImage];
    
    
    //r2d2
    NSURL *r2d2URL =[NSURL URLWithString:@"http://en.wikipedia.org/wiki/R2-D2"];
    NSData *r2d2Sound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"r2-d2" withExtension:@"caf"]];
    UIImage *r2d2Image = [UIImage imageNamed:@"RD-D2.jpg" ];
    
    FCBCharacterModel *r2d2 = [FCBCharacterModel  characterModelWhiAlias:@"r2d2"
                                                                     wikiPage:r2d2URL
                                                                    soundData:r2d2Sound
                                                                        photo:r2d2Image];
    
    //palpatine
    NSURL *palpatineURL =[NSURL URLWithString:@"http://en.wikipedia.org/wiki/R2-D2"];
    NSData *palpatineSound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"palpatine" withExtension:@"caf"]];
    UIImage *palpatineImage = [UIImage imageNamed:@"palpatine.jpg" ];
    
    FCBCharacterModel *palpatine = [FCBCharacterModel  characterModelWhiAlias:@"r2d2"
                                                                wikiPage:palpatineURL
                                                               soundData:palpatineSound
                                                                   photo:palpatineImage];

    return @[vader,c3po,chewbacca,r2d2,palpatine];
    
}

-(NSArray *) arrayOfControls{
    
    NSArray * models = [self arrayModels];
    
    NSMutableArray * controllers = [NSMutableArray arrayWithCapacity:5];
    
    for (FCBCharacterModel *model in models){
        
        FCBChararterViewController *charVC = [[FCBChararterViewController alloc] initWithModel:model];
        
        [controllers addObject:charVC];
    }
    
    return controllers;
}

@end

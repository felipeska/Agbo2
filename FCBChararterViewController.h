//
//  FCBChararterViewController.h
//  Agbo2
//
//  Created by WTFCALDERON on 6/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCBCharacterModel.h"
#import "CafPlayer.h"

@interface FCBChararterViewController : UIViewController

@property (strong, nonatomic) FCBCharacterModel *model;
@property (weak, nonatomic) IBOutlet UIImageView * photoView;
@property (strong, nonatomic) CafPlayer *player;

-(id) initWithModel: (FCBCharacterModel *) aModel;

-(IBAction)playSound:(id)sender;
-(IBAction)showWiki:(id)sender;

@end

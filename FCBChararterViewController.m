//
//  FCBChararterViewController.m
//  Agbo2
//
//  Created by WTFCALDERON on 6/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import "FCBChararterViewController.h"
#import "CafPlayer.h"


@implementation FCBChararterViewController



-(id) initWithModel: (FCBCharacterModel *) aModel{
    
    if (self = [super initWithNibName:nil bundle:nil]) {
        
        _model = aModel;
        self.title = aModel.alias;
    }
    
    return self;
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    
    self.photoView.image = self.model.photo;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions

-(IBAction)playSound:(id)sender{
    
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData: self.model.soundData];
}

@end

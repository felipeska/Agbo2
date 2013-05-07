//
//  FCBCharactersViewController.h
//  Agbo2
//
//  Created by WTFCALDERON on 7/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCBCharacterModels.h"

#define IMPERIAL_SECTION 0
#define REBEL_SECTION 1


@interface FCBCharactersViewController : UITableViewController

-(id) initWithStyle:(UITableViewStyle)aStyle
              model: (FCBCharacterModels *) aModel;

@end

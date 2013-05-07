//
//  FCBWikiViewController.h
//  Agbo2
//
//  Created by WTFCALDERON on 7/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCBCharacterModel.h"
@interface FCBWikiViewController : UIViewController <UIWebViewDelegate>

@property(strong,nonatomic) FCBCharacterModel *model;
@property(weak,nonatomic) IBOutlet UIWebView *wbrouser;
@property(weak,nonatomic) IBOutlet UIActivityIndicatorView *activityView;


-(id) initWithModel: (FCBCharacterModel *) aModel;
@end

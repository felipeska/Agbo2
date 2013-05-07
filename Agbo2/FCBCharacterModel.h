//
//  FCBCharacterModel.h
//  Agbo2
//
//  Created by WTFCALDERON on 6/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCBCharacterModel : NSObject

@property (strong, nonatomic) NSString * firstName;
@property (strong, nonatomic) NSString * lastName;
@property (strong, nonatomic) NSString * alias;
@property (strong, nonatomic) NSURL * wikiPage;
@property (strong, nonatomic) NSData * soundData;
@property (strong, nonatomic) UIImage * photo;

-(id) initWhitFirstName: (NSString *) aFirstName
                lastName: (NSString *) aLastName
                   alias: (NSString * ) aAlias
                wikiPage: (NSURL *) aWikiPage
               soundData: (NSData *) aSoundData
                   photo: (UIImage *) aPhoto;

-(id) initWhitAlias: (NSString * ) aAlias
           wikiPage: (NSURL *) aWikiPage
          soundData: (NSData *) aSoundData
              photo: (UIImage *) aPhoto;


+(id) characterModelWhitFirstName: (NSString *) aFirstName
                          lastName: (NSString *) aLastName
                             alias: (NSString * ) aAlias
                          wikiPage: (NSURL *) aWikiPage
                         soundData: (NSData *) aSoundData
                             photo: (UIImage *) aPhoto;


+(id) characterModelWhiAlias: (NSString * ) aAlias
                    wikiPage: (NSURL *) aWikiPage
                   soundData: (NSData *) aSoundData
                       photo: (UIImage *) aPhoto;


@end

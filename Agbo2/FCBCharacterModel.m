//
//  FCBCharacterModel.m
//  Agbo2
//
//  Created by WTFCALDERON on 6/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import "FCBCharacterModel.h"

@implementation FCBCharacterModel


+(id) characterModelWhitFirstName: (NSString *) aFirstName
                          lastName: (NSString *) aLastName
                             alias: (NSString * ) aAlias
                          wikiPage: (NSURL *) aWikiPage
                         soundData: (NSData *) aSoundData
                             photo: (UIImage *) aPhoto{
    
    return [[self alloc] initWhitFirstName:aFirstName lastName:aLastName alias:aAlias wikiPage:aWikiPage soundData:aSoundData photo:aPhoto];
    
}


+(id) characterModelWhiAlias: (NSString * ) aAlias
                    wikiPage: (NSURL *) aWikiPage
                   soundData: (NSData *) aSoundData
                       photo: (UIImage *) aPhoto{
    
    return [[self alloc] initWhitAlias:aAlias wikiPage:aWikiPage soundData:aSoundData photo:aPhoto];
    
}

-(id) initWhitFirstName: (NSString *) aFirstName
                lastName: (NSString *) aLastName
                   alias: (NSString * ) aAlias
                wikiPage: (NSURL *) aWikiPage
               soundData: (NSData *) aSoundData
                   photo: (UIImage *) aPhoto {
    
    if(self = [super init]){
        _firstName = aFirstName;
        _lastName = aLastName;
        _alias = aAlias;
        _wikiPage = aWikiPage;
        _soundData = aSoundData;
        _photo = aPhoto;
    }
    
    return  self;
}

-(id) initWhitAlias: (NSString * ) aAlias
           wikiPage: (NSURL *) aWikiPage
          soundData: (NSData *) aSoundData
              photo: (UIImage *) aPhoto{
    
    
    return [self initWhitAlias:aAlias wikiPage:aWikiPage soundData:aSoundData photo: aPhoto];
    
}


@end

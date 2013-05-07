//
//  FCBCharacterModels.m
//  Agbo2
//
//  Created by WTFCALDERON on 7/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import "FCBCharacterModels.h"

@interface FCBCharacterModels ()

@property (strong,nonatomic) NSArray *rebels;
@property (strong,nonatomic) NSArray *imperials;

@end

@implementation FCBCharacterModels

#pragma mark - Properties

-(int) rebelCount{
    
    return [self.rebels count];
}

-(int) imperialCount{
    
    return [self.rebels count];
}


-(id) init{
    if(self = [super init]){
        
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
        FCBCharacterModel *c3po = [FCBCharacterModel characterModelWhitFirstName:@""
                                                                        lastName:@""
                                                                           alias:@"c3po"
                                                                        wikiPage:c3poURL
                                                                       soundData:c3poSound
                                                                           photo:c3poImage];
        
        //chewbacca
        NSURL *chewbaccaURL =[NSURL URLWithString:@"http://en.wikipedia.org/wiki/Chewbacca"];
        NSData *chewbaccaSound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"chewbacca" withExtension:@"caf"]];
        UIImage *chewbaccaImage = [UIImage imageNamed:@"chewbacca.jpg" ];
        
        FCBCharacterModel *chewbacca = [FCBCharacterModel  characterModelWhitFirstName:@""
                                                                              lastName:@""
                                                                                 alias:@"chewbacca"
                                                                              wikiPage:chewbaccaURL
                                                                             soundData:chewbaccaSound
                                                                                 photo:chewbaccaImage];
        
        
//        //r2d2
//        NSURL *r2d2URL =[NSURL URLWithString:@"http://en.wikipedia.org/wiki/R2-D2"];
//        NSData *r2d2Sound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"r2-d2" withExtension:@"caf"]];
//        UIImage *r2d2Image = [UIImage imageNamed:@"R2-D2.jpg" ];
//        
//        FCBCharacterModel *r2d2 = [FCBCharacterModel  characterModelWhitFirstName:@"r2-d2"
//                                                                         lastName:@"r2-d2"
//                                                                            alias:@"r2-d2"
//                                                                         wikiPage:r2d2URL
//                                                                        soundData:r2d2Sound
//                                                                            photo:r2d2Image];
        
        //palpatine
        NSURL *palpatineURL =[NSURL URLWithString:@"http://en.wikipedia.org/wiki/Palpatine"];
        NSData *palpatineSound = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"palpatine" withExtension:@"caf"]];
        UIImage *palpatineImage = [UIImage imageNamed:@"palpatine.jpg" ];
        
        FCBCharacterModel *palpatine = [FCBCharacterModel  characterModelWhitFirstName:@""
                                                                              lastName:@"Palpatine"
                                                                                 alias:@"Darth Sidious"
                                                                              wikiPage:palpatineURL
                                                                             soundData:palpatineSound
                                                                                 photo:palpatineImage];
        
        self.rebels = @[chewbacca,c3po];
        self.imperials = @[palpatine,vader];
        
    }
    
    return self;
}

-(FCBCharacterModel *)rebelChararcterAtIndex: (int) anIndex{
    
    return [self.rebels objectAtIndex:anIndex];
}

-(FCBCharacterModel *) imperialCharacterAtIndex: (int) anIndex{
    
    return [self.imperials objectAtIndex:anIndex];
}

@end

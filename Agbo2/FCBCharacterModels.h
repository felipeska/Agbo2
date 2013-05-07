//
//  FCBCharacterModels.h
//  Agbo2
//
//  Created by WTFCALDERON on 7/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FCBCharacterModel.h"

@interface FCBCharacterModels : NSObject

@property (nonatomic, readonly) int rebelCount;
@property (nonatomic, readonly) int imperialCount;

-(FCBCharacterModel *)rebelChararcterAtIndex: (int) anIndex;
-(FCBCharacterModel *) imperialCharacterAtIndex: (int) anIndex;

@end

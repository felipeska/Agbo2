//
//  FCBCharactersViewController.m
//  Agbo2
//
//  Created by WTFCALDERON on 7/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import "FCBCharactersViewController.h"
#import "FCBCharacterModels.h"
#import "FCBCharacterModel.h"
#import "FCBChararterViewController.h"

@interface FCBCharactersViewController ()

@property (nonatomic, strong) FCBCharacterModels *models;

@end

@implementation FCBCharactersViewController

-(id) initWithStyle:(UITableViewStyle)aStyle
              model: (FCBCharacterModels *) aModel{
    
    if(self = [super initWithStyle:aStyle]){
        
        _models = aModel;
        self.title = @"StarsWars Enciclopedia";
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if(section == IMPERIAL_SECTION){
        return @"imperials";
    }else{
        return @"rebels";
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    
    if (section == IMPERIAL_SECTION) {
        return self.models.imperialCount;
    }
    else{
        return self.models.rebelCount;
    }
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    // Averiguar de que personaje se trata
    
    FCBCharacterModel *character = nil;
    
    if(indexPath.section == IMPERIAL_SECTION){
        
        character = [self.models imperialCharacterAtIndex:indexPath.row];
    }else{
        character = [self.models rebelChararcterAtIndex:indexPath.row];
    }
    
    // Reutilizamos una celda
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    

    //La configuarmos
    cell.imageView.image = character.photo;
    cell.textLabel.text = character.alias;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", character.firstName, character.lastName];
    
    return cell;

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Averiguamos de quien se trata
    
    FCBCharacterModel * character = nil;
    
    if(indexPath.section == IMPERIAL_SECTION){
        character = [self.models imperialCharacterAtIndex:indexPath.row];
    }else{
        character = [self.models rebelChararcterAtIndex:indexPath.row];
    }
    
    //Creamos el controlador
    
    FCBChararterViewController *charVC = [[FCBChararterViewController alloc] initWithModel:character];
    
    //hacemos el push
    
    [self.navigationController pushViewController:charVC animated:YES];
}

@end

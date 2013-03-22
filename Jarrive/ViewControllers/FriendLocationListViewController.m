//
//  FriendLocationListViewController.m
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import "FriendLocationListViewController.h"
#import "Friend.h"
#import "FriendLocation.h"
#import "PinDropViewController.h"
@interface FriendLocationListViewController ()
-(void)showNewLocation;
@end

@implementation FriendLocationListViewController

-(id)initWithFriend:(Friend *)aFriend{
    self = [super initWithStyle:UITableViewStylePlain];
    if(self){
        _friend = aFriend;
    }
    return self;
}

-(void)loadView{
    [super loadView];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                               target:self
                                                                               action:@selector(showNewLocation)];
    [self.navigationItem setRightBarButtonItem:addButton];
    
}

-(void)pinDroppedAtCoordinate:(CLLocationCoordinate2D)coordinate{
    NSLog(@"Pin dropped");
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

-(void)showNewLocation{
    PinDropViewController *pdvc = [[PinDropViewController alloc] initWithNibName:@"WhereamiViewController.xib" bundle:nil];
    pdvc.delegate = self;
    UINavigationController *navCon = [[UINavigationController alloc] initWithRootViewController:pdvc];
    [self.navigationController presentViewController:navCon
                                            animated:YES
                                          completion:nil];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_friend.locations count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *kCellIdentifier = @"Location Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
    }
    FriendLocation *l = [_friend.locations objectAtIndex:indexPath.row];
    [cell.textLabel setText:l.name];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end

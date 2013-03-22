//
//  FriendTableViewController.m
//  Jarrive
//
//  Created by Ian Later on 3/21/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import "FriendListViewController.h"
#import "FriendLocationListViewController.h"
#import "FriendManager.h"
#import "Friend.h"
@interface FriendListViewController ()

@end

@implementation FriendListViewController

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[FriendManager getInstance] friends] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *kCellIdentifier = @"Friend Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier forIndexPath:indexPath];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
    }
    Friend *f = [[[FriendManager getInstance] friends] objectAtIndex:indexPath.row];
    [cell.textLabel setText:f.name];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Friend *f = [[[FriendManager getInstance] friends] objectAtIndex:indexPath.row];
    FriendLocationListViewController *lvc = [[FriendLocationListViewController alloc] initWithFriend:f];
    [self.navigationController pushViewController:lvc animated:YES];
}

@end

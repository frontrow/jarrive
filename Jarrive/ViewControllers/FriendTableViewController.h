//
//  FriendTableViewController.h
//  Jarrive
//
//  Created by Ian Later on 3/21/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import <UIKit/UIKit.h>

//this is just a dummy friend object class to populate array of friends
//am not sure, currently, how the table view controller works with the views for each individual user,
//but guessing each user view will pull data from user class and the table view should have some id
//that corrosponds to a user or some other way of messaging to open new view for corrosponding user. 
@interface userFriendObj:NSObject{
int _ID;
}
@property int ID;
@end
@implementation userFriendObj
@synthesize ID=_ID;
-(id)initWithID: (int) newID
{
    self=[userFriendObj alloc];
    self.ID=newID;
    return self;
}
@end

@interface FriendTableViewController : UITableViewController
{
    //This tableview's array of friends should be init'd with a user's array of friends and should probably
    //actually maybe be removed in the long run and replaced with direct calls to an array in a user class
    NSMutableArray* _friends;
    
}

@property NSMutableArray* friends;
@end

//
//  FriendLocationListViewController.h
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PinDropViewController.h"
@class Friend;
@interface FriendLocationListViewController : UITableViewController<PinDropDelegate>{
    Friend *_friend;
}

-(id)initWithFriend:(Friend *)aFriend;
@end

//
//  FriendManager.h
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Friend;

@interface FriendManager : NSObject{
    NSMutableArray *_friends;
}

@property(readonly)NSArray *friends;

+(FriendManager *)getInstance;
-(void)addFriend:(Friend *)aFriend;

@end

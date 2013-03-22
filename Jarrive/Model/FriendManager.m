//
//  FriendManager.m
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import "FriendManager.h"
#import "Friend.h"
#import "FriendLocation.h"

@implementation FriendManager

@synthesize friends = _friends;

-(id)init{
    self = [super init];
    if(self){
        _friends = [[NSMutableArray alloc] init];
        //create a fake friend
        Friend *f = [[Friend alloc] initWithName:@"TestUser"];
        CLLocationCoordinate2D loc = CLLocationCoordinate2DMake(34.023214, -118.284);
        FriendLocation *fl = [[FriendLocation alloc] initWithName:@"Home" andCoordinate:loc];
        [f addLocation:fl];
        [_friends addObject:f];
    }
    return self;
}

static FriendManager *__instance;
+(FriendManager *)getInstance{
    if(!__instance){
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            __instance = [[FriendManager alloc] init];
        });
    }
    return __instance;
}

-(void)addFriend:(Friend *)aFriend {
    [_friends addObject:aFriend];
}

@end

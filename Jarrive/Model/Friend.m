//
//  Friend.m
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import "Friend.h"

@implementation Friend

-(id)initWithName:(NSString *)name{
    self = [super init];
    if(self){
        _name = name;
        _locations = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addLocation:(FriendLocation *)location{
    [_locations addObject:location];
}

@end

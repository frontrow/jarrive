//
//  Friend.h
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FriendLocation;

@interface Friend : NSObject{
    NSString *_name;
    NSMutableArray *_locations;
}

@property(readonly)NSString *name;
@property(readonly)NSArray *locations;

-(id)initWithName:(NSString *)name;
-(void)addLocation:(FriendLocation *)location;

@end

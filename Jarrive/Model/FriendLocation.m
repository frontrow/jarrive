//
//  FriendLocation.m
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import "FriendLocation.h"

@implementation FriendLocation

@synthesize name = _name;
@synthesize coordinate = _coordinate;

-(id)initWithName:(NSString *)aName andCoordinate:(CLLocationCoordinate2D)aCoordinate {
    self = [super init];
    if(self){
        _name = aName;
        _coordinate = aCoordinate;
    }
    
    return self;
}
@end

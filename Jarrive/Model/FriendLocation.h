//
//  FriendLocation.h
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface FriendLocation : NSObject{
    NSString *_name;
    CLLocationCoordinate2D _coordinate;
}

@property(readonly)NSString *name;
@property(readonly)CLLocationCoordinate2D coordinate;

-(id)initWithName:(NSString *)aName andCoordinate:(CLLocationCoordinate2D)aCoordinate;

@end

//
//  PinDropViewController.h
//  Jarrive
//
//  Created by Clark Barry on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@protocol PinDropDelegate<NSObject>
-(void)pinDroppedAtCoordinate:(CLLocationCoordinate2D)coordinate;
@end


@interface PinDropViewController : UIViewController


@property(weak)id<PinDropDelegate>delegate;

@end

//
//  ArrivalViewController.m
//  Jarrive
//
//  Created by Omar Khulusi on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import "ArrivalViewController.h"

@interface ArrivalViewController ()

@end

@implementation ArrivalViewController

@synthesize status = _status;
@synthesize statusLabel = _statusLabel;
@synthesize cancelButton = _cancelButton;

- (id)initWithBool:(BOOL *)aBOOL andTitle:(NSString *)titleName{
    self = [super init];
    if(self){
        [self setTitle:titleName];
        _status = aBOOL;
        
    //Setting Status Label
        if(_status){
            _statusLabel = @"Your ride has arrived!";
            [self cancelArrival:YES];
        } else{
          _statusLabel = @"Still not there yet!";
            [self notThereYetAnimation:YES];
        }
    }
    return self;
}

#warning button not connected to anything yet (easiest done with storyboard)
- (void)loadView {
    //load other stuff
    _cancelButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
}

- (void)cancelArrival:(BOOL)pressedCancel {
    if(pressedCancel){
        _statusLabel = @"Arrival has been cancelled.";
        //do something to cancel the arrival
    }
}

- (void)notThereYetAnimation:(BOOL)notArrived {
    if(notArrived){
        //animation effect, or just do something else
    }
    else{
        [self cancelArrival:YES];
    }
}


@end
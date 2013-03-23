//
//  ArrivalViewController.h
//  Jarrive
//
//  Created by Omar Khulusi on 3/22/13.
//  Copyright (c) 2013 com.frc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArrivalViewController : UIViewController{
    BOOL *_status;
    NSString *_statusLabel;
    UIButton *_cancelButton;
}

@property(readonly) BOOL *status;
@property(readonly) NSString *statusLabel;
@property UIButton *cancelButton;

- (id)initWithBOOL:(BOOL *)aBOOL andTitle:(NSString *)titleName;
- (void)loadView;
- (void)cancelArrival:(BOOL)pressedCancel;
- (void)notThereYetAnimation:(BOOL)notThereYet;

@end

//
//  DMXProcController.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/18/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

extern NSString * const DMXClock;

#import <Foundation/Foundation.h>

@interface DMXProcController : NSObject {
    NSTimer *clock;
}

- (IBAction)procStart:(id)sender;
- (IBAction)procStop:(id)sender;
- (IBAction)procReset:(id)sender;

- (void)clockTrigger:(NSTimer *)clock;

@end

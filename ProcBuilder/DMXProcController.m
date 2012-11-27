//
//  DMXProcController.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/18/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXProcController.h"

NSString * const DMXClock = @"DMXClock";

@implementation DMXProcController

- (IBAction)procStart:(id)sender
{
    if (clock == nil) {
        clock = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(clockTrigger:) userInfo:nil repeats:YES];
    }
}

- (IBAction)procStop:(id)sender
{
    if (clock != nil) {
        [clock invalidate];
        clock = nil;
    }
}

- (IBAction)procReset:(id)sender
{
    
}

- (void)clockTrigger:(NSTimer *)clock
{
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc postNotificationName:DMXClock object:self];
}

@end

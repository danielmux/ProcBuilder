//
//  DMXInstruction.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/24/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXInstruction.h"
#import "DMXDatapath.h"
#import "DMXStage.h"

@implementation DMXInstruction

@synthesize opCode;
@synthesize datapath;
@synthesize currentStage;

- (void)moveToNextStage
{
    if (![[currentStage nextStage] instruction]) {
        // Assigning instruction to next stage pointed by [currentStage nextStage]
        // Then we have to update new [currentStage nextStage] pointers
        [[currentStage nextStage] setInstruction:self];
        [currentStage setInstruction:nil];
        [self setCurrentStage:[currentStage nextStage]];
    }
}

@end

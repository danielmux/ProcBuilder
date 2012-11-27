//
//  DMXInstructionJType.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 11/1/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXInstructionJType.h"
#import "DMXDatapath.h"
#import "DMXStage.h"

@implementation DMXInstructionJType

@synthesize address;

- (void)moveToNextStage
{
    [super moveToNextStage];
    if (![[currentStage nextStage] instruction]) {
        if (currentStage == (DMXStage *)[datapath instructionFetch]) {
            [currentStage setNextStage:(DMXStage *)[datapath instructionDecode]];
        } else if (currentStage == (DMXStage *)[datapath instructionDecode]) {
            [currentStage setNextStage:(DMXStage *)[datapath execute1]];
        } else if (currentStage == (DMXStage *)[datapath execute1]) {
            [currentStage setNextStage:(DMXStage *)[datapath memoryAccess]];
        } else if (currentStage == (DMXStage *)[datapath memoryAccess]) {
            [currentStage setNextStage:(DMXStage *)[datapath writeBack]];
        } else if (currentStage == (DMXStage *)[datapath writeBack]) {
            [currentStage setNextStage:nil];
        }
    }
}

@end

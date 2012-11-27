//
//  DMXInstructionFetch.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/30/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXInstructionFetch.h"
#import "DMXInstruction.h"

@implementation DMXInstructionFetch

- (void)setInstruction:(DMXInstruction *)instr
{
    DMXInstruction *instruction = [programController selection];
    [super setInstruction:instr];
}

- (void)instructionFetch
{
    
}

@end

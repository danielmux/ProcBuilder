//
//  DMXExecute.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/30/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXExecute.h"
#import "DMXInstruction.h"
#import "DMXInstructionRType.h"
#import "DMXInstructionIType.h"
#import "DMXRegister.h"

@implementation DMXExecute

- (void)setInstruction:(DMXInstruction *)instr
{
    if ([instr opCode] == @"ADDD") {
        [(DMXInstructionRType *)instr setResult:[NSNumber numberWithDouble:[[[(DMXInstructionRType *)instr regS] value] doubleValue] + [[[(DMXInstructionRType *)instr regT] value] doubleValue]]];
    } else if ([instr opCode] == @"SUBD") {
        [(DMXInstructionRType *)instr setResult:[NSNumber numberWithDouble:[[[(DMXInstructionRType *)instr regS] value] doubleValue] - [[[(DMXInstructionRType *)instr regT] value] doubleValue]]];
    } else if ([instr opCode] == @"MULTD") {
        [(DMXInstructionRType *)instr setResult:[NSNumber numberWithDouble:[[[(DMXInstructionRType *)instr regS] value] doubleValue] * [[[(DMXInstructionRType *)instr regT] value] doubleValue]]];
    }
    [super setInstruction:instr];
}

@end

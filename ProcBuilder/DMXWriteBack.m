//
//  DMXWriteBack.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/30/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXWriteBack.h"
#import "DMXInstructionRType.h"
#import "DMXRegister.h"

@implementation DMXWriteBack

- (void)setInstruction:(DMXInstructionRType *)instr
{
    [[instr regD] setValue:[instr value]];
    [super setInstruction:instr];
}

@end

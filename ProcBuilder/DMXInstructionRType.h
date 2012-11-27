//
//  DMXInstructionRType.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/29/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXInstruction.h"
@class DMXRegister;

@interface DMXInstructionRType : DMXInstruction {
    DMXRegister *regS;
    DMXRegister *regT;
    DMXRegister *regD;
    NSNumber *result;
}

@property (readwrite) DMXRegister *regS;
@property (readwrite) DMXRegister *regT;
@property (readwrite) DMXRegister *regD;
@property (readwrite) NSNumber *result;

@end

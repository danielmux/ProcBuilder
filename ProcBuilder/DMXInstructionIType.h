//
//  DMXInstructionIType.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/31/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXInstruction.h"
@class DMXRegister;

@interface DMXInstructionIType : DMXInstruction {
    DMXRegister *regS;
    DMXRegister *regT;
    NSNumber *immediate;
    NSNumber *result;
}

@property (readwrite) DMXRegister *regS;
@property (readwrite) DMXRegister *regT;
@property (readonly) NSNumber *immediate;
@property (readwrite) NSNumber *result;

@end

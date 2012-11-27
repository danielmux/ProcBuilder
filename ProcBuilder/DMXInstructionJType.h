//
//  DMXInstructionJType.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 11/1/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXInstruction.h"

@interface DMXInstructionJType : DMXInstruction {
    NSNumber *branchAddress;
}

@property (readonly) NSNumber *branchAddress;

@end

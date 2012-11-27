//
//  DMXInstructionFetch.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/30/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXStage.h"
#import "DMXProgramController.h"

@interface DMXInstructionFetch : DMXStage {
    NSNumber *programCounter;
    DMXProgramController *programController;
}

- (void)instructionFetch;

@end

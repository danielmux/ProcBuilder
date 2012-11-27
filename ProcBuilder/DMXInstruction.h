//
//  DMXInstruction.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/24/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DMXDatapath;
@class DMXStage;

@interface DMXInstruction : NSManagedObject {
    NSString *opCode;
    DMXDatapath *datapath;
    DMXStage *currentStage;
}

@property (readwrite) NSString *opCode;
@property (readwrite) DMXDatapath *datapath;
@property (readwrite) DMXStage *currentStage;

- (void)moveToNextStage;

@end

//
//  DMXStage.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/24/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DMXDatapath;
@class DMXInstruction;
@class DMXStage;

@interface DMXStage : NSManagedObject {
    NSString *stageId;
    DMXDatapath *datapath;
    DMXInstruction *instruction;
    DMXStage *nextStage;
}

@property (readwrite) DMXDatapath *datapath;
@property (readwrite) DMXInstruction *instruction;
@property (readwrite) DMXStage *nextStage;

- (id)initWithDatapath:(DMXDatapath *)dp;

@end

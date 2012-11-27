//
//  DMXDatapath.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/24/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DMXInstructionFetch;
@class DMXInstructionDecode;
@class DMXExecute;
@class DMXMemoryAccess;
@class DMXWriteBack;

@interface DMXDatapath : NSManagedObject {
    NSString *datapathId;
    DMXInstructionFetch *instructionFetch;
    DMXInstructionDecode *instructionDecode;
    DMXExecute *execute1;
    DMXExecute *execute2;
    DMXMemoryAccess *memoryAccess;
    DMXWriteBack *writeBack;
}

@property (readwrite) DMXInstructionFetch *instructionFetch;
@property (readwrite) DMXInstructionDecode *instructionDecode;
@property (readwrite) DMXExecute *execute1;
@property (readwrite) DMXExecute *execute2;
@property (readwrite) DMXMemoryAccess *memoryAccess;
@property (readwrite) DMXWriteBack *writeBack;

- (void)shift;

@end

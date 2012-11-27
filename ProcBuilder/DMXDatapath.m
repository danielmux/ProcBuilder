//
//  DMXDatapath.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/24/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXDatapath.h"
#import "DMXStage.h"
#import "DMXInstructionFetch.h"
#import "DMXInstructionDecode.h"
#import "DMXExecute.h"
#import "DMXMemoryAccess.h"
#import "DMXWriteBack.h"

@implementation DMXDatapath

@synthesize instructionFetch;
@synthesize instructionDecode;
@synthesize execute1;
@synthesize execute2;
@synthesize memoryAccess;
@synthesize writeBack;

- (id)init
{
    self = [super init];
    if (self) {
        instructionFetch = [[DMXInstructionFetch alloc] initWithDatapath:self];
        instructionDecode = [[DMXInstructionDecode alloc] initWithDatapath:self];
        execute1 = [[DMXExecute alloc] initWithDatapath:self];
        execute2 = [[DMXExecute alloc] initWithDatapath:self];
        memoryAccess = [[DMXMemoryAccess alloc] initWithDatapath:self];
        writeBack = [[DMXWriteBack alloc] initWithDatapath:self];
    }
    return self;
}

- (void)shift
{
    
}

@end

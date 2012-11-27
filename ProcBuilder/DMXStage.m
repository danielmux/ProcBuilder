//
//  DMXStage.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/24/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "DMXStage.h"

@implementation DMXStage

@synthesize datapath;
@synthesize instruction;
@synthesize nextStage;

- (id)initWithDatapath:(DMXDatapath *)dp
{
    self = [super init];
    if (self) {
        datapath = dp;
        instruction = nil;
        nextStage = nil;
    }
    return self;
}

@end

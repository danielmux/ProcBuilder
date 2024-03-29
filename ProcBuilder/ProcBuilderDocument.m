//
//  ProcBuilderDocument.m
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/16/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import "ProcBuilderDocument.h"
#import "DMXDatapath.h"

@implementation ProcBuilderDocument

- (id)init
{
    self = [super init];
    if (self) {
        datapath = [[DMXDatapath alloc] init];
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"ProcBuilderDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end

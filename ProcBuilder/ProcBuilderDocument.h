//
//  ProcBuilderDocument.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/16/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class DMXProcController;
@class DMXProgramController;
@class DMXRegisterController;
@class DMXDataController;

@class DMXDatapath;


@interface ProcBuilderDocument : NSPersistentDocument {
    IBOutlet DMXProcController *procController;
    IBOutlet DMXProgramController *programController;
    IBOutlet DMXRegisterController *registerController;
    IBOutlet DMXDataController *dataController;
    
    IBOutlet NSTableView *stageTableView;
    
    DMXDatapath *datapath;
}

@end

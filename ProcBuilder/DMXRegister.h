//
//  DMXRegister.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 10/29/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMXInstruction.h"

@interface DMXRegister : NSManagedObject {
    NSString *registerId;
    NSNumber *value;
    DMXInstruction *writer;
}

@property (readwrite) NSNumber *value;
@property (readwrite) DMXInstruction *writer;

@end

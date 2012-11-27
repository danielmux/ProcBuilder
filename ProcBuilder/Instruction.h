//
//  Instruction.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 11/6/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Register;

@interface Instruction : NSManagedObject

@property (nonatomic, retain) NSNumber * immediate;
@property (nonatomic, retain) NSString * label;
@property (nonatomic, retain) NSNumber * offset;
@property (nonatomic, retain) NSString * opCode;
@property (nonatomic, retain) NSNumber * stage;
@property (nonatomic, retain) Register *operand1;
@property (nonatomic, retain) Register *operand2;
@property (nonatomic, retain) Register *result;

@end

//
//  Register.h
//  ProcBuilder
//
//  Created by Daniel Iparraguirre on 11/6/12.
//  Copyright (c) 2012 Daniel Iparraguirre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Instruction;

@interface Register : NSManagedObject

@property (nonatomic, retain) id data;
@property (nonatomic, retain) NSString * dataType;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) Instruction *instruction;

@end

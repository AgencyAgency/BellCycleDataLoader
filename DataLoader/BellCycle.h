//
//  BellCycle.h
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Bell, Cycle;

@interface BellCycle : NSManagedObject

@property (nonatomic, retain) Bell *bell;
@property (nonatomic, retain) Cycle *cycle;

@end

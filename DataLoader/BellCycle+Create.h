//
//  BellCycle+Create.h
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import "BellCycle.h"

@interface BellCycle (Create)

+ (BellCycle *)bellCycleWithBellName:(NSString *)bellName
                           cycleName:(NSString *)cycleName
              inManagedObjectContext:(NSManagedObjectContext *)context;

@end

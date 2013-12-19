//
//  Cycle+Create.h
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import "Cycle.h"

@interface Cycle (Create)

+ (Cycle *)cycleWithName:(NSString *)name inManagedObjectContext:(NSManagedObjectContext *)context;

@end

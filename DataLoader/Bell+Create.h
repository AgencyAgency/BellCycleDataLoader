//
//  Bell+Create.h
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import "Bell.h"

@interface Bell (Create)

+ (Bell *)bellWithName:(NSString *)name inManagedObjectContext:(NSManagedObjectContext *)context;

@end

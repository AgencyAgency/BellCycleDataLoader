//
//  BellCycle+Create.m
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import "BellCycle+Create.h"
#import "Bell+Create.h"
#import "Cycle+Create.h"

@implementation BellCycle (Create)

+ (BellCycle *)bellCycleWithBellName:(NSString *)bellName
                           cycleName:(NSString *)cycleName
              inManagedObjectContext:(NSManagedObjectContext *)context
{
    BellCycle *bellCycle = nil;
    if ([bellName length] && [cycleName length]) {
        NSString *className = NSStringFromClass([self class]);
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:className];
        request.predicate = [NSCompoundPredicate andPredicateWithSubpredicates:
                             @[[NSPredicate predicateWithFormat:@"bell.name = %@", bellName],
                               [NSPredicate predicateWithFormat:@"cycle.name = %@", cycleName]
                               ]];
        
        NSError *error;
        NSArray *matches = [context executeFetchRequest:request error:&error];
        
        if (!matches || ([matches count] > 1)) {
            // handle error
            NSAssert(NO, @"Wrong number of %@ matches returned.", className);
            
        } else if (![matches count]) {
            NSLog(@"Creating new %@: %@ - Cycle:%@", className, bellName, cycleName);
            bellCycle = [NSEntityDescription insertNewObjectForEntityForName:className
                                                 inManagedObjectContext:context];
            bellCycle.bell = [Bell bellWithName:bellName inManagedObjectContext:context];
            bellCycle.cycle = [Cycle cycleWithName:cycleName inManagedObjectContext:context];
        } else {
            bellCycle = [matches lastObject];
        }
    }
    return bellCycle;
}


@end

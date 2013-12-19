//
//  Cycle+Create.m
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import "Cycle+Create.h"

@implementation Cycle (Create)

+ (Cycle *)cycleWithName:(NSString *)name inManagedObjectContext:(NSManagedObjectContext *)context
{
    Cycle *cycle = nil;
    if ([name length]) {
        NSString *className = NSStringFromClass([self class]);
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:className];
        request.predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
        
        NSError *error;
        NSArray *matches = [context executeFetchRequest:request error:&error];
        
        if (!matches || ([matches count] > 1)) {
            // handle error
            NSAssert(NO, @"Wrong number of %@ matches returned.", className);
            
        } else if (![matches count]) {
            NSLog(@"Creating new %@: %@", className, name);
            cycle = [NSEntityDescription insertNewObjectForEntityForName:className
                                                 inManagedObjectContext:context];
            cycle.name = name;
        } else {
            cycle = [matches lastObject];
        }
    }
    return cycle;
}


@end

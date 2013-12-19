//
//  AADataLoader.m
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import "AADataLoader.h"
#import "BellCycle+Create.h"

@implementation AADataLoader


#pragma mark - JSON Schedule Data Load

+ (void)loadScheduleJSONIntoContext:(NSManagedObjectContext *)context
{
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:@"schedule_formatted"
                                                         ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonPath];
    NSError *error = nil;
    NSArray *schedule = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:kNilOptions
                                                          error:&error];
    
    if (!error) {
        for (NSDictionary *dayInfo in schedule) {
            NSString *cycleString = [NSString stringWithFormat:@"%@", dayInfo[@"cycle"]];
            [BellCycle bellCycleWithBellName:dayInfo[@"title"]
                                   cycleName:cycleString
                      inManagedObjectContext:context];
        }
    } else {
        NSAssert(NO, @"Could not parse JSON schedule.");
    }
}

@end

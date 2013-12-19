//
//  AADataLoader.h
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AADataLoader : NSObject

+ (void)loadScheduleJSONIntoContext:(NSManagedObjectContext *)context;

@end

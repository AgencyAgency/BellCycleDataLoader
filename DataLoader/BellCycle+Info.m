//
//  BellCycle+Info.m
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import "BellCycle+Info.h"
#import "Bell.h"
#import "Cycle.h"

@implementation BellCycle (Info)

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@, Cycle:%@", self.bell.name, self.cycle.name];
}


@end

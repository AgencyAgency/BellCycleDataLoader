//
//  AADetailViewController.h
//  DataLoader
//
//  Created by Kyle Oba on 12/18/13.
//  Copyright (c) 2013 AgencyAgency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BellCycle.h"

@interface AADetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) BellCycle *bellCycle;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

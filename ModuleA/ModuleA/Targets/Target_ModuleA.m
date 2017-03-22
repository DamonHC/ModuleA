//
//  Target_ModuleA.m
//  ModuleA
//
//  Created by hechao on 17/3/21.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "Target_ModuleA.h"
#import "AViewController.h"

@implementation Target_ModuleA

- (UIViewController *)Action_aViewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end

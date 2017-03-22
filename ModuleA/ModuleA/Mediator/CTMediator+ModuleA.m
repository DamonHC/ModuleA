//
//  CTMediator+ModuleA.m
//  ModuleA_Category
//
//  Created by hechao on 17/3/21.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "CTMediator+ModuleA.h"

@implementation CTMediator (ModuleA)

- (UIViewController *)moduleA_aViewController
{
    return [self performTarget:@"ModuleA" action:@"aViewController" params:nil shouldCacheTarget:NO];
}

@end

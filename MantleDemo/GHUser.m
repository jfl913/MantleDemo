//
//  GHUser.m
//  MantleDemo
//
//  Created by JunfengLi on 16/8/21.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import "GHUser.h"

@implementation GHUser

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"name": @"name",
             @"gender": @"gender",
             @"age": @"age",
             @"success": @"success",
             };
}

@end

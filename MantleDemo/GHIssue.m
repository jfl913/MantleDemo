//
//  GHIssue.m
//  MantleDemo
//
//  Created by JunfengLi on 16/8/21.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import "GHIssue.h"

@implementation GHIssue

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"URL": @"url",
             @"title": @"title",
             @"user": @"user",
             };
}

+ (NSValueTransformer *)userJSONTransformer
{
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[GHUser class]];
}

@end

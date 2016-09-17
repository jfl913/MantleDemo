//
//  GHIssue.m
//  MantleDemo
//
//  Created by JunfengLi on 16/8/21.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import "GHIssue.h"

@implementation GHIssue


// 前面是model的property，后面是json字典里的key
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"URL": @"url",
             @"title": @"title",
             @"user": @"user",
             @"name": @"user.name",
             };
}

+ (NSValueTransformer *)URLJSONTransformer
{
    return [nsvaluva];
}

+ (NSValueTransformer *)userJSONTransformer
{
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[GHUser class]];
}

@end

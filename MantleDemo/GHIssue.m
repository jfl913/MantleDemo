//
//  GHIssue.m
//  MantleDemo
//
//  Created by JunfengLi on 16/8/21.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import "GHIssue.h"

@implementation GHIssue

// model的property与JSON的key之间的映射关系
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"URL": @"url",
             @"title": @"title",
             @"user": @"user",
             };
}

+ (NSValueTransformer *)URLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)userJSONTransformer
{
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[GHUser class]];
}

@end

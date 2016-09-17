//
//  ClassNameTransformer.m
//  NSValueTransformerDemo
//
//  Created by JunfengLi on 16/9/4.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import "ClassNameTransformer.h"

NSString * const ClassNameTransformerName = @"ClassNameTransformer";

@implementation ClassNameTransformer

+ (void)initialize
{
    [NSValueTransformer setValueTransformer:[ClassNameTransformer new] forName:ClassNameTransformerName];
}

+ (Class)transformedValueClass
{
    return [NSString class];
}

+ (BOOL)allowsReverseTransformation
{
    return NO;
}

- (nullable id)transformedValue:(nullable id)value
{
    if ([value isKindOfClass:[NSString class]]) {
        NSString *strValue = (NSString *)value;
        return [strValue uppercaseString];
    } else {
        return (value == nil) ? nil : NSStringFromClass([value class]);
    }
}

@end

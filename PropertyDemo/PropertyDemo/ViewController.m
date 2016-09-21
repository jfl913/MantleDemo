//
//  ViewController.m
//  PropertyDemo
//
//  Created by LiJunfeng on 16/9/20.
//  Copyright © 2016年 LiJunfeng. All rights reserved.
//

#import "ViewController.h"
#import "GHIssue.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)tapButton:(id)sender
{
//    [self test1];
    [self classCopyPropertyList];
}

- (void)test1
{
    NSString *propertyKey = @"title";
    objc_property_t property = class_getProperty([GHIssue class], propertyKey.UTF8String);
    
    // "T@\"NSString\",C,N,V_title"
    const char * const attrString = property_getAttributes(property);
    
}

- (void)classCopyPropertyList
{
    unsigned count = 0;
    objc_property_t *properties = class_copyPropertyList([GHIssue class], &count);
    for (unsigned i = 0; i < 1; i++) {
        objc_property_t property = properties[i];
        
        const char * propertyName = property_getName(property);
        // "T@\"NSString\",C,N,V_title"
        const char * const propertyAttributes = property_getAttributes(property);
        
        NSLog(@"propertyName: %s", propertyName);
        NSLog(@"propertyAttributes: %s", propertyAttributes);
        NSLog(@"---------------------");
        
        const char *typeString = propertyAttributes + 1;
        const char *next = NSGetSizeAndAlignment(typeString, NULL, NULL);
        NSLog(@"next: %s", next);
    }
    
    NSLog(@"encode: %s", @encode(NSURL));
}

@end

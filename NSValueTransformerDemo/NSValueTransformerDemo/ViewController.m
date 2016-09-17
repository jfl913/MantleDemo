//
//  ViewController.m
//  NSValueTransformerDemo
//
//  Created by JunfengLi on 16/9/4.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import "ViewController.h"
#import "ClassNameTransformer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (IBAction)tapButton:(id)sender
{
    NSValueTransformer *valueTransformer = [NSValueTransformer valueTransformerForName:ClassNameTransformerName];
    
    NSDate *date = [NSDate date];
    NSString *className = [valueTransformer transformedValue:date];
    
    NSLog(@"NSDate %@", className);
    NSLog(@"NSString %@", [valueTransformer transformedValue:[@"jfl" mutableCopy]]);
    NSLog(@"n %@", [valueTransformer transformedValue:className]);
    NSLog(@"NSNumber %@", [valueTransformer transformedValue:@(15)]);
}

@end

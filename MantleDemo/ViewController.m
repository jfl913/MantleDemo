//
//  ViewController.m
//  MantleDemo
//
//  Created by JunfengLi on 16/8/21.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import "ViewController.h"
#import "GHIssue.h"

@interface ViewController ()

@property (nonatomic, strong) NSDictionary *dictionary;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary *userDict = @{@"name": @"李俊峰",
                               @"gender": @"男",};
    self.dictionary = @{@"url": @"www.baidu.com",
                        @"title": @"百度",
                        @"user": userDict};
    
}

- (IBAction)tapButton:(id)sender
{
    NSError *error = nil;
    GHIssue *issue = [MTLJSONAdapter
                      modelOfClass:[GHIssue class]
                      fromJSONDictionary:self.dictionary
                      error:&error];
    NSLog(@"issue: %@", issue);
}



@end

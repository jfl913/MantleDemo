//
//  ViewController.m
//  MantleDemo
//
//  Created by JunfengLi on 16/8/21.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import "ViewController.h"
#import "GHIssue.h"
#import "HBUser.h"
#import "Xtrace.h"

@interface ViewController ()

@property (nonatomic, strong) NSDictionary *dictionary;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [Xtrace describeValues:NO];
    [Xtrace showCaller:YES];
    [Xtrace showActual:YES];
    [Xtrace showArguments:YES];
    [Xtrace showReturns:NO];
    [GHIssue xtrace];
    [MTLJSONAdapter xtrace];
    [MTLModel xtrace];
    
    NSDictionary *userDict = @{@"name": @"李俊峰",
                               @"gender": @"男",};
    self.dictionary = @{@"url": @"www.baidu.com",
                        @"title": @"百度",
                        @"user": userDict};
    
}

- (IBAction)tapButton:(id)sender
{
    NSError *error = nil;
    GHIssue *issue = [MTLJSONAdapter modelOfClass:[GHIssue class]
                               fromJSONDictionary:self.dictionary
                                            error:&error];
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *path  = [docPath stringByAppendingPathComponent:@"data.archiver"];
    [NSKeyedArchiver archiveRootObject:issue toFile:path];
    
    NSLog(@"issue: %@", issue);
    
//    GHUser *user = [GHUser new];
//    user.name = @"jfl";
//    user.gender = @"male";
//    user.age = 18;
//    user.success = 0;
//    
//    NSDictionary *userDict = [MTLJSONAdapter JSONDictionaryFromModel:user error:nil];
//    HBUser *otherUser = [MTLJSONAdapter modelOfClass:[HBUser class]
//                                  fromJSONDictionary:userDict
//                                               error:&error];
//    NSLog(@"otherUser: %@", otherUser);
}



@end

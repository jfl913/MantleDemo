//
//  ViewController.m
//  SelRegisterName
//
//  Created by LiJunfeng on 16/9/9.
//  Copyright © 2016年 LiJunfeng. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
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
    
}

//sel_registerName
- (void)testSelRegisterName:(NSString *)para
{
    NSLog(@"sel_registerName");
}

@end

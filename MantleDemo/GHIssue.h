//
//  GHIssue.h
//  MantleDemo
//
//  Created by JunfengLi on 16/8/21.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "GHUser.h"

@interface GHIssue : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSURL *URL;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) GHUser *user;
@property (nonatomic, copy, getter=getName) NSString *name;

@end

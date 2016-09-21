//
//  GHIssue.h
//  PropertyDemo
//
//  Created by LiJunfeng on 16/9/20.
//  Copyright © 2016年 LiJunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GHUser.h"

@interface GHIssue : NSObject

@property (nonatomic, copy) NSURL *URL;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) GHUser *user;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, readonly) NSString *read;
@property (nonatomic) NSInteger age;
@property (nonatomic, weak) id delegate;
@property (nonatomic, copy, getter=getTabName) NSString *tabName;
@property (nonatomic, copy) NSString *jfl;

@end

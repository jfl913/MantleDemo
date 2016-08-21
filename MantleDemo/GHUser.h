//
//  GHUser.h
//  MantleDemo
//
//  Created by JunfengLi on 16/8/21.
//  Copyright © 2016年 JunfengLi. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface GHUser : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *gender;

@end

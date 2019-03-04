//
//  UserModel.m
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age{
    
    self = [super init];
    
    if (self) {
        
        self.name = name;
        
        self.age = age;
        
    }
    
    return self;
}

@end

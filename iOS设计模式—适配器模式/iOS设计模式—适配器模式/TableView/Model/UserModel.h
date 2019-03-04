//
//  UserModel.h
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserModel : NSObject

@property (nonatomic,copy) NSString *name;

@property (nonatomic,assign) NSInteger age;

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END

//
//  ObjectAdapter.h
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adaptee.h"
#import "Target.h"

NS_ASSUME_NONNULL_BEGIN

@interface ObjectAdapter : NSObject<Target>

-(instancetype)initWithAdaptee:(Adaptee *)adaptee;

@property (nonatomic,strong) Adaptee *adaptee;

@end

NS_ASSUME_NONNULL_END

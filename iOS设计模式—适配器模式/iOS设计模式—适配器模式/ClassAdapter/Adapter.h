//
//  Adapter.h
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adaptee.h"
#import "Target.h"

NS_ASSUME_NONNULL_BEGIN

/**
 类适配器
 
 需要实现协议
 
 另外：适配器需要继承被适配器
 */
@interface Adapter : Adaptee<Target>

@end

NS_ASSUME_NONNULL_END

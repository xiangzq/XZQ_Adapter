//
//  Adaptee.h
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//被适配者
@interface Adaptee : NSObject

//获取1000V电压
-(float)get1000V;

@end

NS_ASSUME_NONNULL_END

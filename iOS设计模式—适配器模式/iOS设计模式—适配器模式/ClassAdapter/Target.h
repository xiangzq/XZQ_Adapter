//
//  Target.h
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//类适配器协议
@protocol Target <NSObject>

@optional

//目标接口
//客户端需要200V电压接口
-(float)get200V;

//目标接口
//客户端需要10000V电压接口
-(float)get10000V;

@end

NS_ASSUME_NONNULL_END

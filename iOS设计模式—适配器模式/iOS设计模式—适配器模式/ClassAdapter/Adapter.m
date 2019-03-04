//
//  Adapter.m
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter

//实现1000V电压转200V的方法
//由于请求的数据只有1000V电压，但是我们客户端却需要的是200V的电压，这时候就需要适配器来兼容
-(float)get200V{
    
    //经过一系列复杂的计算
    float V = [self get1000V] / 5.0;
    
    return V;
    
}

@end

//
//  ObjectAdapter.m
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import "ObjectAdapter.h"

@implementation ObjectAdapter

-(instancetype)initWithAdaptee:(Adaptee *)adaptee{
    
    self = [super init];
    
    if (self) {
        
        self.adaptee = adaptee;
    }
    
    return self;
    
}

-(float)get10000V{
    
    return [self.adaptee get1000V] * 10.0;
}

@end

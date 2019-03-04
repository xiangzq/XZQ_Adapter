//
//  BaseAdapter.h
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//基类适配器
//实现tableView的协议接口
@interface BaseAdapter : NSObject<UITableViewDataSource,UITableViewDelegate>

//初始数据,万能类型
@property (nonatomic,strong) NSMutableArray<id> *datas;

@end

NS_ASSUME_NONNULL_END

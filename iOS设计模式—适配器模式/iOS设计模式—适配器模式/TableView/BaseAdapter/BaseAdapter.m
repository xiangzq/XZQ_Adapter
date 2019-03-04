//
//  BaseAdapter.m
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import "BaseAdapter.h"

@implementation BaseAdapter

-(instancetype)init{
    
    self = [super init];
    
    if (self) {
        
        self.datas = [NSMutableArray arrayWithCapacity:0];
        
    }
    
    return self;
}

//提供默认实现
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

//提供默认实现
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectio{
    return self.datas.count;
}

//提供默认实现
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = @"name";
    cell.detailTextLabel.text = @"age";
    return cell;
}

//提供默认实现
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
    
}

@end

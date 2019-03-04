//
//  TableAdapter.m
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import "TableAdapter.h"
#import "UserModel.h"
@implementation TableAdapter

-(instancetype)init{
    
    self = [super init];
    
    if (self) {
        
        for (int i = 0; i < 100; i ++) {
            
            UserModel *model = [[UserModel alloc]initWithName:@"项阿丑" age:27];
            
            [self.datas addObject:model];
            
        }
    }
    
    return self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    
    UserModel *user = self.datas[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"姓名：%@ 年龄：%ld",user.name,user.age];
        
    return cell;
}

@end

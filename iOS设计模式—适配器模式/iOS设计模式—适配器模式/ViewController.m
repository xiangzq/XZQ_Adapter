//
//  ViewController.m
//  iOS设计模式—适配器模式
//
//  Created by 项正强 on 2019/3/4.
//  Copyright © 2019 项正强. All rights reserved.
//

#import "ViewController.h"
#import "ClassAdapter/Adapter.h"
#import "ObjectAdapter/ObjectAdapter.h"
#import "TableAdapter.h"

@interface ViewController ()

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) TableAdapter *tableAdapter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self classAdapterTest];
    
    [self objectAdapterTest];
    
    [self setView];
}

-(void)classAdapterTest{
    
    float V = [[Adapter new] get200V];
    
    NSLog(@"%.2f",V);
}

-(void)objectAdapterTest{
    
    ObjectAdapter *adapter = [[ObjectAdapter alloc]initWithAdaptee:[Adaptee new]];
    
    float V = [adapter get10000V];
    
    NSLog(@"%.2f",V);
}

-(void)setView{
    
    self.tableAdapter = ({
        
        TableAdapter *adapter = [[TableAdapter alloc]init];
        
        adapter;
        
    });
    
    self.tableView = ({
        
        UITableView *tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
        
        /**
         此时tableview的代理指向的不是self，而是tableAdapter适配器了
         因为，适配器内部已经实现了这些协议
         */
        tableView.delegate = self.tableAdapter;
        
        tableView.dataSource = self.tableAdapter;
        
        [self.view addSubview:tableView];
        
        tableView;
        
    });
    
}

@end

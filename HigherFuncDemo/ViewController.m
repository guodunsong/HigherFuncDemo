//
//  ViewController.m
//  HigherFuncDemo
//
//  Created by issuser on 2018/8/31.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+HigherFunc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testMap];
    [self testFilter];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)testMap {
    
    NSMutableArray *array = @[].mutableCopy;
    [array addObject:@{@"name":@"jack",@"code":@1}];
    [array addObject:@{@"name":@"judy",@"code":@2}];
    [array addObject:@{@"name":@"judy",@"code":@3}];
    [array addObject:@{@"name":@"mike",@"code":@4}];
    
    NSArray *arr = array.map(^id(id item) {
        NSString *dic = item;
        NSString *name = [dic valueForKey:@"name"];
        return @{@"name": name};

    });
    
    NSLog(@">>>map:%@",arr);;
}


- (void)testFilter {
    NSMutableArray *array = @[].mutableCopy;
    [array addObject:@{@"name":@"jack",@"code":@1}];
    [array addObject:@{@"name":@"judy",@"code":@2}];
    [array addObject:@{@"name":@"judy",@"code":@3}];
    [array addObject:@{@"name":@"mike",@"code":@4}];
    
    NSArray *arr = array.filter(^BOOL(id item) {
        NSDictionary *dic = item;
        NSInteger code = [[dic objectForKey:@"code"] integerValue];
        
        return code > 2;
    });
    
    
    NSLog(@">>>filter:%@",arr);
    
}

@end

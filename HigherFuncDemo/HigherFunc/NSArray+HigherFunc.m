//
//  NSArray+HigherFunc.m
//  BlockDemo
//
//  Created by issuser on 2018/8/31.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import "NSArray+HigherFunc.h"

typedef void(^HigherFuncEnumerateHandler)(id Item);
@implementation NSArray (HigherFunc)


- (HigherFuncArrayMap)map {
    
    HigherFuncArrayMap map = ^NSArray*(HigherFuncItemMap itemMap) {
        NSMutableArray *items = @[].mutableCopy;
        for (id item in self) {
            [items addObject:itemMap(item)];
        }
        
        return items;
    };
    
    return map;
}

- (HigherFuncArrayFilter)filter {
    HigherFuncArrayFilter filter = ^NSArray*(HigherFuncItemFilter itemFilter) {
        NSMutableArray *items = @[].mutableCopy;
        for (id item in self) {
            if (itemFilter(item)) {
                [items addObject:item];
            }
        }
        return items;
    };
    
    return filter;
}

#pragma mark -
#pragma mark 重写set方法防止外部修改实现 method
- (void)setMap:(HigherFuncArrayMap)map {}
- (void)setFilter:(HigherFuncArrayFilter)filter {}

@end

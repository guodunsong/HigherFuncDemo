//
//  NSArray+HigherFunc.h
//  BlockDemo
//
//  Created by issuser on 2018/8/31.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import <Foundation/Foundation.h>

//数组元素转换
typedef id(^HigherFuncItemMap)(id item);
typedef NSArray*(^HigherFuncArrayMap)(HigherFuncItemMap itemMap);

//数组元素筛选
typedef BOOL(^HigherFuncItemFilter)(id item);
typedef NSArray*(^HigherFuncArrayFilter)(HigherFuncItemFilter itemFilter);




@interface NSArray (HigherFunc)

@property (nonatomic, copy, readonly) HigherFuncArrayMap map;
@property (nonatomic, copy, readonly) HigherFuncArrayFilter filter;


@end

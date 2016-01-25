//
//  algorithmsTest.m
//  algorithmsTest
//
//  Created by 黄 灿 on 15/12/29.
//  Copyright © 2015年 MCoder. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "lineResearch.h"
#import "binarySearch.h"
#import "merge.h"
#import "insertionSort.h"
#import "selectionSort.h"
@interface algorithmsTest : XCTestCase
@property(nonatomic,assign)NSInteger result;
@end

@implementation algorithmsTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

//线性查找
- (void)testLinkedSearch {
    NSArray * dSearchArray = @[@12,@1,@9,@5,@14,@67,@19,@8];
    _result = [lineResearch lineSearch:8 searchArray:dSearchArray];
    XCTAssertTrue(_result);
}
//二分搜索
- (void)testBinarySearch {
    NSArray * dSearchArray = @[@1,@3,@6,@8,@12,@22,@25,@26,@30,@56];
    _result = [binarySearch binarySearchWith:1 andSearchArray:dSearchArray];
    XCTAssertTrue(_result==0);
}
//合并排序
- (void)testMerge {
    NSArray *firstArray = @[@1,@5,@17,@20];
    NSArray *secondArray = @[@2,@5,@16,@22,@40,@100,@122];
    NSArray *result = [merge mergeTwoArrayWithFirst:firstArray andSecond:secondArray];
    NSLog(@"merge result is %@",result);
}
//选择排序
-(void)testSelectionSort{
    NSArray *secondArray = @[@20,@5,@56,@29,@40,@10,@22];
    NSMutableArray *array = [NSMutableArray arrayWithArray:secondArray];
    NSArray *arr = [selectionSort selectionSortWithArray:array];
    NSLog(@"seletionSort result is %@",arr);
}
//插入排序
-(void)testInsertionSort{
    NSArray *secondArray = @[@20,@5,@56,@29,@40,@10,@22];
    NSMutableArray *array = [NSMutableArray arrayWithArray:secondArray];
    NSArray *arr = [insertionSort insertionSortWithArray:array];
    NSLog(@"insertionSort result is %@",arr);
}
@end

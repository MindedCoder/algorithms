//
//  lineResearch.m
//  algorithms
//
//  Created by 黄 灿 on 15/12/29.
//  Copyright © 2015年 MCoder. All rights reserved.
//

#import "lineResearch.h"

@implementation lineResearch

//+ (instancetype)shareInstance{
//    static lineResearch *sharedInstance = nil;
//    static dispatch_once_t predicate;
//    dispatch_once(&predicate, ^{
//        sharedInstance = [[self alloc]init];
//    });
//    return sharedInstance;
//}

#pragma mark - lineSearch

/*****************************************************************************/
/*      当数组无序的时候，我们就无可避免的需要一个个遍历数组中所有的数据，但要是我们知道了 */
/*  数组中的顺序，那我们就可以用一个比较高效率的算法，二分搜索来执行，见binarySearch.m  */
/*****************************************************************************/

+ (NSInteger)lineSearch:(NSInteger)searchNumber searchArray:(NSArray *)searchArray{
//    NSDate *date =[NSDate date];
//    UInt64 timesp =[date timeIntervalSince1970]*1000.0f;
    
    for (NSInteger i =0; i<[searchArray count]; i++) {
        if([searchArray[i] integerValue]==searchNumber){
//            NSDate *date1 =[NSDate date];
//            UInt64 timesp1 =[date1 timeIntervalSince1970]*1000.0f;
//            CGFloat result = timesp1-timesp;
//            NSLog(@"lineSearch runs time is %f",result);
            return i;
        }
    }
    
//    NSDate *date1 =[NSDate date];
//    UInt64 timesp1 =[date1 timeIntervalSince1970]*1000.0f;
//    CGFloat result = timesp1-timesp;
//    NSLog(@"lineSearch runs time is %f",result);
    return 0;
    
}

@end

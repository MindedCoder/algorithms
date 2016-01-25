//
//  binarySearch.m
//  algorithms
//
//  Created by 黄 灿 on 15/12/30.
//  Copyright © 2015年 MCoder. All rights reserved.
//

#import "binarySearch.h"

@implementation binarySearch

/*****************************************************************************/
/*                      假设数组是按照从小到大的顺序排列                          */
/*****************************************************************************/


+ (NSInteger)binarySearchWith:(NSInteger)searchNumber andSearchArray:(NSArray *)searchArray{
    NSInteger low = 0,high = [searchArray count],j=-1,mid;
    while (low<=high&&j==-1) {
        mid = (low+high)/2;
        if ([searchArray[mid] integerValue]==searchNumber) {
            j = mid;
        }else if ([searchArray[mid] integerValue]<searchNumber){
            low = mid +1;
        }else{
            high = mid - 1;
        }
    }
    return j;
}
@end

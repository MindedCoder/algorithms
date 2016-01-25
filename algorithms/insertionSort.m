//
//  insertionSort.m
//  algorithms
//
//  Created by 黄 灿 on 16/1/4.
//  Copyright © 2016年 MCoder. All rights reserved.
//

#import "insertionSort.h"

@implementation insertionSort
+(NSArray *)insertionSortWithArray:(NSMutableArray *)array{
    
    for (int i= 1; i<[array count]; i++) {
        for (int j = i; j>0; j--) {
            if (array[j]<array[j-1]) {
                id temp =  array[j-1];
                array[j-1] = array[j];
                array[j] = temp;
            }
        }
    }
    
    return array;
}
@end

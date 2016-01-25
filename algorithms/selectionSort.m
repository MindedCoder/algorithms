//
//  selectionSort.m
//  algorithms
//
//  Created by 黄 灿 on 16/1/4.
//  Copyright © 2016年 MCoder. All rights reserved.
//

#import "selectionSort.h"

@implementation selectionSort
+(NSArray *)selectionSortWithArray:(NSMutableArray *)array{
    
    for (int i=0; i<[array count]-1; i++) {
        int k =i;
        for (int j =i+1; j<[array count]; j++) {
            if (array[j]>array[k]) {
                k = j;
            }
        }
        if (k!=i) {
            id temp = array[i];
            array[i] = array[k];
            array[k] = temp;
        }
    }
    return array;
    
}
@end

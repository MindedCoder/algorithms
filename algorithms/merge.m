//
//  merge.m
//  algorithms
//
//  Created by 黄 灿 on 16/1/3.
//  Copyright © 2016年 MCoder. All rights reserved.
//

#import "merge.h"

@implementation merge
/*****************************************************************************/
/*                      注意输入的两个数组必须是升序排列的数组                      */
/*****************************************************************************/



+(NSArray *)mergeTwoArrayWithFirst:(NSArray *)firstArray andSecond:(NSArray *)secondArray{
    
    NSMutableArray *returnArray = [[NSMutableArray alloc]initWithCapacity:[firstArray count]+[secondArray count]];
    
    NSInteger s=0,q=0;
    
    while (s<[firstArray count]&&q<[secondArray count]) {
        if (firstArray[s]<=secondArray[q]) {
            [returnArray addObject:firstArray[s]];
            s++;
        }else{
            [returnArray addObject:secondArray[q]];
            q++;
        }
    }
    
    if (s==[firstArray count]) {
        for (NSInteger i=q; i<[secondArray count]; i++) {
            [returnArray addObject:secondArray[i]];
        }
    }else{
        for (NSInteger i=s; i<[firstArray count]; i++) {
            [returnArray addObject:secondArray[i]];
        }
    }
    
    return returnArray;
}
@end

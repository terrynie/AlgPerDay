//
//  InsertSort.m
//  插入排序
//
//  Created by Terry on 3/25/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "InsertSort.h"

@implementation InsertSort
+ (void)insertSort:(NSMutableArray *)array {
    for (int i=1; i<array.count; i++) {
        for (int j=i;j>0;j--) {
            if (array[j-1]<array[j]) {
                break;
            }
            NSNumber *temp = array[j];
            array[j] = array[j-1];
            array[j-1] = temp;
        }
    }
    
    NSLog(@"\n%s---%@",__func__,array);
}
@end

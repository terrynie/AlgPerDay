//
//  main.m
//  冒泡升序
//
//  Created by Terry on 3/9/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InsertSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:@8,@6,@1,@5,@4, nil];
        NSMutableArray *newArray = [NSMutableArray arrayWithArray:array];
        for (int i = 0; i < newArray.count; i++) {
            for (int j=0; j<newArray.count-1-i; j++) {
                long num1 = [[newArray objectAtIndex:j] integerValue];
                long num2 = [[newArray objectAtIndex:j+1] integerValue];
                if (num1 > num2) {
                    [newArray replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%ld",num2]];
                    [newArray replaceObjectAtIndex:j+1 withObject:[NSString stringWithFormat:@"%ld",num1]];
                }
            }
        }
        NSLog(@"%@",newArray);
        
        //验证插入排序
        NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@10,@4,@2,@19,@11, nil];
        [InsertSort insertSort:array1];
    }
    return 0;
}

//
//  NSArray+BKSafeExts.m
//  Bricks
//
//  Created by heke on 2016/11/16.
//  Copyright © 2016年 BK. All rights reserved.
//

#import "NSArray+BKSafeExts.h"

@implementation NSArray (BKSafeExts)

- (id)bk_objectAtIndex:(NSUInteger)index {
    if (self.count == 0 || index > self.count -1) {
        NSLog(@"数组越界:count:%lu-1 < index:%lu",(unsigned long)self.count,(unsigned long)index);
        return nil;
    }else {
        return [self objectAtIndex:index];
    }
}

@end

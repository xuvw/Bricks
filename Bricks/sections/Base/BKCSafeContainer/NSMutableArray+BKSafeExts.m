//
//  NSMutableArray+BKSafeExts.m
//  Bricks
//
//  Created by heke on 2016/11/16.
//  Copyright © 2016年 BK. All rights reserved.
//

#import "NSMutableArray+BKSafeExts.h"

@implementation NSMutableArray (BKSafeExts)

- (void)bk_addObject:(nonnull id)anObject {
    if (anObject == nil) {
        NSLog(@"can not add nil to array!!!");
    }else {
        [self addObject:anObject];
    }
}

@end

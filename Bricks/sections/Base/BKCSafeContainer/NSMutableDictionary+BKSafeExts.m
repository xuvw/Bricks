//
//  NSMutableDictionary+BKSafeExts.m
//  Bricks
//
//  Created by heke on 2016/11/16.
//  Copyright © 2016年 BK. All rights reserved.
//

#import "NSMutableDictionary+BKSafeExts.h"

@implementation NSMutableDictionary (BKSafeExts)

- (void)bk_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject == nil || aKey == nil) {
        NSLog(@"object and key mustn't be null when do insert op");
    }else {
        [self setObject:anObject forKey:aKey];
    }
}

@end

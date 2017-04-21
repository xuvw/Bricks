//
//  NSMutableDictionary+BKSafeExts.h
//  Bricks
//
//  Created by heke on 2016/11/16.
//  Copyright © 2016年 BK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (BKSafeExts)

- (void)bk_setObject:(id)anObject forKey:(id<NSCopying>)aKey;

@end

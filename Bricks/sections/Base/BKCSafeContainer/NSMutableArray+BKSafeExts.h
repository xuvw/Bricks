//
//  NSMutableArray+BKSafeExts.h
//  Bricks
//
//  Created by heke on 2016/11/16.
//  Copyright © 2016年 BK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (BKSafeExts)

- (void)bk_addObject:(nonnull id)anObject;

@end

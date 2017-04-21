//
//  NSDictionary+BKSafeExts.h
//  Bricks
//
//  Created by heke on 2016/11/16.
//  Copyright © 2016年 BK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (BKSafeExts)

- (NSInteger)bk_integerForKey:(NSString *)key;
- (NSInteger)bk_integerForKey:(NSString *)key withDefaultValue:(NSInteger)dv;

- (double)bk_doubleForKey:(NSString *)key;
- (double)bk_doubleForKey:(NSString *)key withDefaultValue:(double)dv;

- (BOOL)bk_boolForKey:(NSString *)key;
- (BOOL)bk_boolForKey:(NSString *)key withDefaultValue:(BOOL)dv;

- (NSString *)bk_stringForKey:(NSString *)key;
- (NSString *)bk_stringForKey:(NSString *)key withDefaultValue:(NSString *)dv;

- (NSArray *)bk_arrayForKey:(NSString *)key;
- (NSArray *)bk_arrayForKey:(NSString *)key withDefaultValue:(NSArray *)dv;

- (NSDictionary *)bk_dictionaryForKey:(NSString *)key;
- (NSDictionary *)bk_dictionaryForKey:(NSString *)key withDefaultValue:(NSDictionary *)dv;

@end

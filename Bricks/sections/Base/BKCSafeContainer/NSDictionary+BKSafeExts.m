//
//  NSDictionary+BKSafeExts.m
//  Bricks
//
//  Created by heke on 2016/11/16.
//  Copyright © 2016年 BK. All rights reserved.
//

#import "NSDictionary+BKSafeExts.h"

@implementation NSDictionary (BKSafeExts)

- (NSInteger)bk_integerForKey:(NSString *)key {
    return [self bk_integerForKey:key withDefaultValue:0];
}
- (NSInteger)bk_integerForKey:(NSString *)key withDefaultValue:(NSInteger)dv {
    id v = [self valueForKey:key]; if (v == nil) return dv;
    if ([v isKindOfClass:[NSNumber class]]) {
        return [((NSNumber *)v) integerValue];
    }else {
        if ([v isKindOfClass:[NSString class]]) {
            return [((NSString *)v) integerValue];
        }
    }
    return dv;
}

- (double)bk_doubleForKey:(NSString *)key {
    return [self bk_doubleForKey:key withDefaultValue:0];
}
- (double)bk_doubleForKey:(NSString *)key withDefaultValue:(double)dv {
    id v = [self valueForKey:key]; if (v == nil) return dv;
    if ([v isKindOfClass:[NSNumber class]]) {
        return [((NSNumber *)v) doubleValue];
    }else {
        if ([v isKindOfClass:[NSString class]]) {
            return [((NSString *)v) doubleValue];
        }
    }
    return dv;
}

- (BOOL)bk_boolForKey:(NSString *)key {
    return [self bk_boolForKey:key withDefaultValue:NO];
}
- (BOOL)bk_boolForKey:(NSString *)key withDefaultValue:(BOOL)dv {
    id v = [self valueForKey:key]; if (v == nil) return dv;
    if ([v isKindOfClass:[NSNumber class]]) {
        return [((NSNumber *)v) boolValue];
    }else {
        if ([v isKindOfClass:[NSString class]]) {
            return [((NSString *)v) boolValue];
        }
    }
    return dv;
}

- (NSString *)bk_stringForKey:(NSString *)key {
    return [self bk_stringForKey:key withDefaultValue:@""];
}
- (NSString *)bk_stringForKey:(NSString *)key withDefaultValue:(NSString *)dv {
    id v = [self valueForKey:key]; if (v == nil) return dv;
    if ([v isKindOfClass:[NSString class]]) {
        return (NSString *)v;
    } else if ([v isKindOfClass:[NSNumber class]]) {
        return [NSString stringWithFormat:@"%@",v];
    }
    return dv;
}

- (NSArray *)bk_arrayForKey:(NSString *)key {
    return [self bk_arrayForKey:key withDefaultValue:[NSArray array]];
}
- (NSArray *)bk_arrayForKey:(NSString *)key withDefaultValue:(NSArray *)dv {
    id v = [self valueForKey:key]; if (v == nil) return dv;
    if ([v isKindOfClass:[NSArray class]]) {
        return (NSArray *)v;
    }
    return dv;
}

- (NSDictionary *)bk_dictionaryForKey:(NSString *)key {
    return [self bk_dictionaryForKey:key withDefaultValue:[NSDictionary dictionary]];
}
- (NSDictionary *)bk_dictionaryForKey:(NSString *)key withDefaultValue:(NSDictionary *)dv {
    id v = [self valueForKey:key]; if (v == nil) return dv;
    if ([v isKindOfClass:[NSDictionary class]]) {
        return (NSDictionary *)v;
    }
    return dv;
}

@end

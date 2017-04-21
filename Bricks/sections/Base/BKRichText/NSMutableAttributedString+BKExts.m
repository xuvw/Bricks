//
//  NSMutableAttributedString+BKExts.m
//  BKAString
//
//  Created by heke on 2017/2/22.
//  Copyright © 2017年 MBK. All rights reserved.
//

#import "NSMutableAttributedString+BKExts.h"

@implementation NSMutableAttributedString (BKExts)

- (NSRange(^)(NSString *))bk_rangeOfString {
    __weak typeof(self)weakSelf = self;
    return ^(NSString *subString) {
        if (subString.length < 1) {
            return NSMakeRange(0, 0);
        }
        return [weakSelf.mutableString rangeOfString:subString];
    };
}

- (void(^)(UIFont *font, NSRange range))bk_setFont{
    __weak typeof(self)weakSelf = self;
    return ^(UIFont *font, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSFontAttributeName value:font range:range];
    };
}

- (void(^)(NSParagraphStyle *, NSRange))bk_setParagraphStyle {
    __weak typeof(self)weakSelf = self;
    return ^(NSParagraphStyle *style, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSParagraphStyleAttributeName value:style range:range];
    };
}

- (void(^)(NSInteger, NSRange))bk_setKern {
    __weak typeof(self)weakSelf = self;
    return ^(NSInteger kernValue, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSKernAttributeName value:[NSNumber numberWithInteger:kernValue] range:range];
    };
}

- (void(^)(UIColor *, NSRange))bk_setForegroundColor {
    __weak typeof(self)weakSelf = self;
    return ^(UIColor *color, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSForegroundColorAttributeName value:color range:range];
    };
}

- (void(^)(UIColor *, NSRange))bk_setBackgroundColor {
    __weak typeof(self)weakSelf = self;
    return ^(UIColor *color, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSBackgroundColorAttributeName value:color range:range];
    };
}

- (void(^)(NSUnderlineStyle, NSRange))bk_setUnderlineStyle {
    __weak typeof(self)weakSelf = self;
    return ^(NSUnderlineStyle underLineStyle, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:underLineStyle] range:range];
    };
}

- (void(^)(UIColor *, NSRange))bk_setUnderlineColor {
    __weak typeof(self)weakSelf = self;
    return ^(UIColor *color, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSUnderlineColorAttributeName value:color range:range];
    };
}

- (void(^)(NSUnderlineStyle, NSRange))bk_setStrikethroughStyle {
    __weak typeof(self)weakSelf = self;
    return ^(NSUnderlineStyle underLineStyle, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:underLineStyle] range:range];
    };
}

- (void(^)(UIColor *, NSRange))bk_setStrikethroughColor {
    __weak typeof(self)weakSelf = self;
    return ^(UIColor *color, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSStrikethroughColorAttributeName value:color range:range];
    };
}

- (void(^)(CGFloat, NSRange))bk_setStrokeWidth {
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat width, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSStrokeWidthAttributeName value:[NSNumber numberWithInteger:width] range:range];
    };
}
- (void(^)(UIColor *, NSRange))bk_setStrokeColor {
    __weak typeof(self)weakSelf = self;
    return ^(UIColor *color, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSStrokeColorAttributeName value:color range:range];
    };
}

- (void(^)(CGSize, CGFloat, UIColor *, NSRange))bk_setShadow {
    __weak typeof(self)weakSelf = self;
    return ^(CGSize shadowOffset, CGFloat shadowBlurRadius, UIColor *shadowColor, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        NSShadow *shadow = [[NSShadow alloc] init];
        shadow.shadowOffset = shadowOffset;
        shadow.shadowBlurRadius = shadowBlurRadius;
        shadow.shadowColor = shadowColor;
        [weakSelf addAttribute:NSShadowAttributeName value:shadow range:range];
    };
}

- (void(^)(NSURL *, NSRange))bk_setLink {
    __weak typeof(self)weakSelf = self;
    return ^(NSURL *url, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSLinkAttributeName value:url range:range];
    };
}

- (void(^)(NSInteger, CGRect, UIImage *))bk_insertImage {
    __weak typeof(self)weakSelf = self;
    return ^(NSInteger insertIndex, CGRect imageBounds, UIImage *image) {
        if (insertIndex > self.mutableString.length) {
            return;
        }
        NSTextAttachment *imageAttactment = [[NSTextAttachment alloc] initWithData:nil ofType:nil];
        imageAttactment.bounds = imageBounds;
        imageAttactment.image = image;
        NSAttributedString *imageString = [NSAttributedString attributedStringWithAttachment:imageAttactment];
        [weakSelf insertAttributedString:imageString atIndex:insertIndex];
    };
}

- (void(^)(CGFloat, NSRange))bk_setBaselineOffset {
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat baselineOffset, NSRange range) {
        if (range.location == NSNotFound) {
            return;
        }
        [weakSelf addAttribute:NSBaselineOffsetAttributeName value:[NSNumber numberWithFloat:baselineOffset] range:range];
    };
}

@end

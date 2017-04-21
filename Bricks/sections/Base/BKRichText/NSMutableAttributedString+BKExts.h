//
//  NSMutableAttributedString+BKExts.h
//  BKAString
//
//  Created by heke on 2017/2/22.
//  Copyright © 2017年 MBK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (BKExts)

- (NSRange(^)(NSString *))bk_rangeOfString;

- (void(^)(UIFont *, NSRange))bk_setFont;
- (void(^)(NSParagraphStyle *, NSRange))bk_setParagraphStyle;

/**
 用于调整字间距
 */
- (void(^)(NSInteger, NSRange))bk_setKern;
- (void(^)(UIColor *, NSRange))bk_setForegroundColor;
- (void(^)(UIColor *, NSRange))bk_setBackgroundColor;
- (void(^)(NSUnderlineStyle, NSRange))bk_setUnderlineStyle;
- (void(^)(UIColor *, NSRange))bk_setUnderlineColor;
- (void(^)(NSUnderlineStyle, NSRange))bk_setStrikethroughStyle;
- (void(^)(UIColor *, NSRange))bk_setStrikethroughColor;
- (void(^)(CGFloat, NSRange))bk_setStrokeWidth;
- (void(^)(UIColor *, NSRange))bk_setStrokeColor;
- (void(^)(CGSize, CGFloat, UIColor *, NSRange))bk_setShadow;


/**
 设置链接效果只有textView时可用，可用buttton+下划线代替
 */
- (void(^)(NSURL *, NSRange))bk_setLink;

/**
 文字中插入图片
 */
- (void(^)(NSInteger, CGRect, UIImage *))bk_insertImage;

- (void(^)(CGFloat, NSRange))bk_setBaselineOffset;

@end

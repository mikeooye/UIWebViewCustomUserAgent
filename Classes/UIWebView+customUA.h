//
//  UIWebView+customUA.h
//  tysxfull_iPhone
//
//  Created by LiHaozhen on 15/6/18.
//  Copyright (c) 2015年 刘 军. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWebView (customUA)

+ (void)setUseragent:(NSString *)newUA;

+ (void)appendUseragent:(NSString *)append;

- (NSString *)logUserAgent;
@end

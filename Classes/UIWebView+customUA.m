//
//  UIWebView+customUA.m
//  tysxfull_iPhone
//
//  Created by LiHaozhen on 15/6/18.
//  Copyright (c) 2015年 刘 军. All rights reserved.
//

#import "UIWebView+customUA.h"

@implementation UIWebView (customUA)

+ (void)setUseragent:(NSString *)newUA
{
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectZero];
    NSString *oldUA = [webView stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
    NSLog(@"old agent: %@", oldUA);
    
    NSString *newAgent = newUA;
    NSLog(@"new agent: %@", newAgent);
    
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:newAgent, @"UserAgent", nil];
    [[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
}

+ (void)appendUseragent:(NSString *)append
{
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectZero];
    NSString *oldUA = [webView stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
    NSLog(@"old agent: %@", oldUA);
    
    NSString *newAgent = [oldUA stringByAppendingString:append];
    NSLog(@"new agent: %@", newAgent);
    
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:newAgent, @"UserAgent", nil];
    [[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
}

- (NSString *)logUserAgent
{
    NSString *oldUA = [self stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
    NSLog(@"old agent: %@", oldUA);
    return oldUA;
}
@end

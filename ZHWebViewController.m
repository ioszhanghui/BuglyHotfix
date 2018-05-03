//
//  ZHWebViewController.m
//  BuglyHotfix
//
//  Created by 小飞鸟 on 2018/4/13.
//  Copyright © 2018年 小飞鸟. All rights reserved.
//

#import "ZHWebViewController.h"
#import <WebKit/WebKit.h>

@interface ZHWebViewController ()

@end

@implementation ZHWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
    [self.view addSubview:webView];
}
@end

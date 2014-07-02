//
//  ViewController.m
//  Yey
//
//  Created by hajime on 7/2/14.
//  Copyright (c) 2014 hajipion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // ステータスバー非表示
    if( [ UIApplication sharedApplication ].isStatusBarHidden == NO ) {
        [ UIApplication sharedApplication ].statusBarHidden = YES;
    }
    
    // Stringオブジェクト生成
    NSString* urlString = @"http://yahoo.co.jp";
    // URLオブジェクト生成
    NSURL* yeyURL = [NSURL URLWithString: urlString];
    // Requestオブジェクト生成
    NSURLRequest* myRequest = [NSURLRequest requestWithURL: yeyURL];
    // ↑をloadRequestメソッドに渡す
    [self.mainWebView loadRequest:myRequest];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

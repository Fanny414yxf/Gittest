//
//  ViewController.m
//  Git
//
//  Created by 杨晓芬 on 16/1/15.
//  Copyright © 2016年 Fanny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"ggggggggggfffffffffffffggggggggggggg");
    
    @try {
        // 可能会出现崩溃的代码
    }
    @catch (NSException *exception) {
        // 捕获到的异常exception
    }
    @finally {
        // 结果处理
    }
    
    
    
    @try {
        // 1
        [self tryTwo];
    }
    @catch (NSException *exception) {
        // 2
        NSLog(@"%s\n%@", __FUNCTION__, exception);
        //        @throw exception; // 这里不能再抛异常
    }
    @finally {
        // 3
        NSLog(@"我一定会执行");
    }
    // 4
    // 这里一定会执行
    NSLog(@"try");

    
    
}

- (void)tryTwo
{
    @try {
        // 5
        NSString *str = @"abc";
        [str substringFromIndex:111]; // 程序到这里会崩
    }
    @catch (NSException *exception) {
        // 6
        //        @throw exception; // 抛出异常，即由上一级处理
        // 7
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        // 8
        NSLog(@"tryTwo - 我一定会执行");
    }
    
    // 9
    // 如果抛出异常，那么这段代码则不会执行
    NSLog(@"如果这里抛出异常，那么这段代码则不会执行");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

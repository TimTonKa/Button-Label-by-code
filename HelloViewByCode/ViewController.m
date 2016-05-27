//
//  ViewController.m
//  HelloViewByCode
//
//  Created by XueXin Tsai on 2016/5/6.
//  Copyright © 2016年 XueXin Tsai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 產生 UILabel
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 40, 44)];
    
    label.text = @"你好";
    
    label.backgroundColor = [UIColor orangeColor];
    
    // 將 Label 貼上 viewcontroller 的 view
    [self.view addSubview:label];
    
    // 產生 UIButton
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(80, 80, 120, 44)];
    
    // 設定 button 的標題
    [button setTitle:@"請按我" forState:UIControlStateNormal];
    
    // 設定 button 的顏色
    button.backgroundColor = [UIColor greenColor];
    
    // 設定 button 按下去的動作
    [button addTarget:self action:@selector(pressMe) forControlEvents:UIControlEventTouchUpInside];
    
    // 將 button 貼上 viewcontroller 的 view
    [self.view addSubview:button];
}

-(void)pressMe{
    NSLog(@"我被按了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

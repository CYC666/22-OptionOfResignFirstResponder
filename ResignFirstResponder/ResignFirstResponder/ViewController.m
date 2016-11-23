//
//  ViewController.m
//  ResignFirstResponder
//
//  Created by mac on 16/11/23.
//  Copyright © 2016年 CYC. All rights reserved.
//



// 测试收起键盘的各种方法

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 200, 300, 200)];
    textView.backgroundColor = [UIColor colorWithWhite:.9 alpha:.5];
    textView.layer.borderWidth = 1;
    textView.layer.borderColor = [UIColor orangeColor].CGColor;
    textView.layer.cornerRadius = 10;
    [self.view addSubview:textView];
    
    
    
    UIButton *buttonA = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonA.frame = CGRectMake(320, 200, 60, 50);
    [buttonA setTitle:@"收起" forState:UIControlStateNormal];
    [buttonA setBackgroundColor:[UIColor orangeColor]];
    [buttonA addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonA];
    
}

#pragma mark - 收起键盘的方法测试
- (void)action:(UIButton *)button {

    // [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];

    // [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
    
    
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self.view endEditing:YES];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

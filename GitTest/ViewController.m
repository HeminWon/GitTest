//
//  ViewController.m
//  GitTest
//
//  Created by HeminWon on 16/4/24.
//  Copyright © 2016年 HeminWon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *gitTestView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 300)];
    gitTestView.backgroundColor = [UIColor redColor];
    [self.view addSubview:gitTestView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

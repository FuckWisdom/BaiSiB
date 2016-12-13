//
//  XXMeViewController.m
//  BaiSi
//
//  Created by harrypch on 2016/10/22.
//  Copyright © 2016年 harrypch. All rights reserved.
//

#import "XXMeViewController.h"

@interface XXMeViewController ()

@end

@implementation XXMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置状态栏内容
    self.navigationItem.title = @"我的";
    
    //设置导航栏左边按钮
    UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    
    settingButton.size = settingButton.currentBackgroundImage.size;
    
    
    settingButton.size = settingButton.currentBackgroundImage.size;
    
    [settingButton addTarget:self action:@selector(settingButton) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:settingButton];
    
    
}

- (void)settingButton
{
    XXLog(@"%s",__func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

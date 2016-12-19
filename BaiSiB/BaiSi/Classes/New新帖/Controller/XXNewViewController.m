//
//  XXNewViewController.m
//  BaiSi
//
//  Created by harrypch on 2016/10/22.
//  Copyright © 2016年 harrypch. All rights reserved.
//

#import "XXNewViewController.h"

@interface XXNewViewController ()

@end

@implementation XXNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置状态栏内容
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage: [UIImage imageNamed:@"MainTitle"]];
    
    //设置导航栏左边按钮
//    UIButton *tagButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [tagButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
//    [tagButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
//    
//    tagButton.size = tagButton.currentBackgroundImage.size;
//    
//    
//    tagButton.size = tagButton.currentBackgroundImage.size;
//    
//    [tagButton addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
    
}

- (void)tagClick
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

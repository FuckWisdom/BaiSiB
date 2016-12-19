//
//  XXEssenceViewController.m
//  BaiSi
//
//  Created by harrypch on 2016/10/22.
//  Copyright © 2016年 harrypch. All rights reserved.
//

#import "XXEssenceViewController.h"

@interface XXEssenceViewController ()

@end

@implementation XXEssenceViewController

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



@end

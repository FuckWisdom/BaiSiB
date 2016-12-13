//
//  XXFriendTrendsViewController.m
//  BaiSi
//
//  Created by harrypch on 2016/10/22.
//  Copyright © 2016年 harrypch. All rights reserved.
//

#import "XXFriendTrendsViewController.h"

@interface XXFriendTrendsViewController ()

@end

@implementation XXFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置状态栏内容
    self.navigationItem.title = @"我的关注";
    
    //设置导航栏左边按钮
    UIButton *friendsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [friendsButton setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    [friendsButton setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
    
    friendsButton.size = friendsButton.currentBackgroundImage.size;
    
    
    friendsButton.size = friendsButton.currentBackgroundImage.size;
    
    [friendsButton addTarget:self action:@selector(friendsClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:friendsButton];
    
    
}

- (void)friendsClick
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

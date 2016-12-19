//
//  XXTabBarController.m
//  BaiSi
//
//  Created by harrypch on 2016/10/17.
//  Copyright © 2016年 harrypch. All rights reserved.
//

#import "XXTabBarController.h"
#import "XXEssenceViewController.h"
#import "XXFriendTrendsViewController.h"
#import "XXNewViewController.h"
#import "XXMeViewController.h"
#import "XXTabBar.h"

@interface XXTabBarController ()

@end

@implementation XXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //字典
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    //定义字体大小
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    //定义字体颜色
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];

    //appearance:外貌 通过appearance来统一所有  UITabBarItem 选项
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];

    
    
    

//    //添加子控制器
//    UIViewController *vc01 = [[UIViewController alloc]init];
//    vc01.view.backgroundColor = [UIColor redColor];
//    vc01.tabBarItem.title = @"精华";
//    //tabBarItem:选项
//    vc01.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
//    //selectedImage:选中的图片
//    vc01.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
//    //addChildViewController:添加子控制器到 tabBar
//    [self addChildViewController:vc01];
//    
    
    

    [self setupChildVc:[[XXEssenceViewController alloc]init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    
    [self setupChildVc:[[XXNewViewController alloc]init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    
    [self setupChildVc:[[XXFriendTrendsViewController alloc]init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    
    [self setupChildVc:[[XXMeViewController alloc]init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    // 直接导入 TabBar 不行 利用 KVC 复制属性到_tabbar
    
    [self setValue:[[XXTabBar alloc]init] forKeyPath:@"tabBar"];
    
    
}



//初始化控制器  更好的扩展性:(UIViewController *)vc可以设置不同类型的初始化界面
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    //设置图片文字
    vc.navigationItem.title =  title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    
    //包装一个导航控制器,添加导航控制器为tabBarController子控制器
//    [self addChildViewController:vc];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}

@end

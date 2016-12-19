//
//  XXTabBar.m
//  BaiSi
//
//  Created by harrypch on 2016/10/22.
//  Copyright © 2016年 harrypch. All rights reserved.
//

#import "XXTabBar.h"



@interface XXTabBar()

//发布按钮
@property (nonatomic,weak)UIButton *publishButton;

@end


@implementation XXTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        publishButton.backgroundColor = [UIColor redColor];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        //设置图片尺寸
        publishButton.size = publishButton.currentBackgroundImage.size;
        
        [self addSubview:publishButton];
        self.publishButton = publishButton;
    }
    
    return self;
}


- (void)layoutSubviews //可能做多次
{
    [super layoutSubviews];
    
    CGFloat width = self.width;
    CGFloat height = self.height;
    
    
    //设置发布按钮的 frame
//    self.publishButton.width = self.publishButton.currentBackgroundImage.size.width;
//    self.publishButton.height = self.publishButton.currentBackgroundImage.size.height;

//    self.publishButton.size = self.publishButton.currentBackgroundImage.size;
    
    //中心点计算
    self.publishButton.center = CGPointMake(width * 0.5, height * 0.5);
    
    //设置其他 UITabButton 的 frame
    CGFloat buttonY = 0;
    CGFloat buttonW = width / 5;
    CGFloat buttonH = height;
    NSInteger index = 0;
    
    for (UIView *button in self.subviews) {
        if(![button isKindOfClass: [UIControl class]] || button == self.publishButton)continue;
        //计算按钮 X 值
        CGFloat buttonX = buttonW * ((index > 1)?(index + 1):index);
        
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        index++;
    }
    
    
    
}

@end

//
//  UIBarButtonItem+XXExtension.m
//  BaiSi
//
//  Created by harrypch on 2016/12/14.
//  Copyright © 2016年 harrypch. All rights reserved.
//

#import "UIBarButtonItem+XXExtension.h"

@implementation UIBarButtonItem (XXExtension)


+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeCustom];
    [Button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [Button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    Button.size = Button.currentBackgroundImage.size;
    Button.size = Button.currentBackgroundImage.size;
    [Button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    return [[UIBarButtonItem alloc]initWithCustomView:Button];
}



@end

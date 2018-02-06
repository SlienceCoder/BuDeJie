//
//  JGTabBarViewController.m
//  BuDeJie
//
//  Created by gjg on 2018/2/6.
//  Copyright © 2018年 gjg. All rights reserved.
//

#import "JGTabBarViewController.h"
#import "JGEssenceController.h"
#import "JGNewController.h"
#import "JGPubilcController.h"
#import "JGFriendTrendController.h"
#import "JGMeController.h"
#import "UIImage+JGRenderImage.h"

@interface JGTabBarViewController ()

@end

@implementation JGTabBarViewController

+ (void)load
{
    
    UITabBarItem *item = [UITabBarItem appearance];
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    NSMutableDictionary *fontAttrs = [NSMutableDictionary dictionary];
    fontAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    [item setTitleTextAttributes:fontAttrs forState:UIControlStateNormal];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 设置自控制器
    [self setupChildrenVc];
    // 设置图片和选中图片
//    [self setupImgAndSeletImg];
}

- (void)setupChildrenVc
{
    // 精华
    UINavigationController *nvc1 = [[UINavigationController alloc] initWithRootViewController:[[JGEssenceController alloc] init]];
    [self addChildViewController:nvc1];
    nvc1.tabBarItem.title = @"精华";
    nvc1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nvc1.tabBarItem.selectedImage = [UIImage returnOriginalImage:@"tabBar_essence_click_icon"];
    // 新帖
    UINavigationController *nvc2 = [[UINavigationController alloc] initWithRootViewController:[[JGNewController alloc]init] ];
    [self addChildViewController:nvc2];
    nvc2.tabBarItem.title = @"新帖";
    nvc2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    nvc2.tabBarItem.selectedImage = [UIImage returnOriginalImage:@"tabBar_new_click_icon"];
    // 发布
    JGPubilcController *vc3 =  [[JGPubilcController alloc]init];
    [self addChildViewController:vc3];
    vc3.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
    vc3.tabBarItem.selectedImage = [UIImage returnOriginalImage:@"tabBar_publish_click_icon"];
    // 关注
    UINavigationController *nvc4 = [[UINavigationController alloc] initWithRootViewController:[[JGFriendTrendController alloc]init] ];
    [self addChildViewController:nvc4];
    nvc4.tabBarItem.title = @"关注";
    nvc4.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nvc4.tabBarItem.selectedImage = [UIImage returnOriginalImage:@"tabBar_friendTrends_click_icon"];
    // 我
    UINavigationController *nvc5 = [[UINavigationController alloc] initWithRootViewController:[[JGMeController alloc]init] ];
    [self addChildViewController:nvc5];
    nvc5.tabBarItem.title = @"我";
    nvc5.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nvc5.tabBarItem.selectedImage = [UIImage returnOriginalImage:@"tabBar_me_click_icon"];
}


@end

//
//  Target_CricleBaseObject.m
//  app3
//
//  Created by wanghonglu on 2018/1/23.
//  Copyright © 2018年 babytree. All rights reserved.
//

#import "Target_CricleBaseObject.h"

@implementation Target_CricleBaseObject

- (void)showVC:(UIViewController *)vc byType:(NSUInteger)showType
{
    vc.hidesBottomBarWhenPushed = YES;
    UINavigationController *routerVC = [Target_CricleBaseObject getCurrentScreenShowVC].navigationController;
    switch (showType) {
        case 0:
        {
            [routerVC pushViewController:vc animated:YES];
            break;
        }
        case 1:
        {
            if ([vc isKindOfClass:[UINavigationController class]])
            {
                [routerVC presentViewController:vc animated:YES completion:nil];
            }
            else if ([vc isKindOfClass:[UIViewController class]])
            {
                UINavigationController *navContrller = [[UINavigationController alloc] initWithRootViewController:vc];
                navContrller.modalPresentationStyle = UIModalPresentationFullScreen;
                navContrller.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
                [routerVC presentViewController:navContrller animated:YES completion:nil];
            }
            break;
        }
        default:
            break;
    }
}


+ (UIViewController *)getCurrentScreenShowVC
{
    UINavigationController *currentNav = (UINavigationController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    if (currentNav.visibleViewController) {
        return currentNav.visibleViewController;
    }else{
        return currentNav;
    }
}

@end

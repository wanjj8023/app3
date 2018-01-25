//
//  BBTCircleRouter.m
//  app3
//
//  Created by wanghonglu on 2018/1/23.
//  Copyright © 2018年 babytree. All rights reserved.
//

#import "BBTCircleRouter.h"
#import <BAFRouter/BAFRouter/BAFRouter.h>
#import <BAFRouter/BAFRouter/BAFRouterURLModel.h>

@implementation BBTCircleRouter
{
    NSSet *s_NeedLoginUrl;
}
+ (instancetype)sharedInstance
{
    static BBTCircleRouter *router = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [[BBTCircleRouter alloc] init];
    });
    return router;
}

- (instancetype)init
{
    if (self = [super init])
    {
        //注册路由map
        BAFRouterConfig *routerConfig = [[BAFRouterConfig alloc] init];
        routerConfig.URLRouteMapFilePath = [[NSBundle mainBundle] pathForResource:@"BBTCricleRouteMap" ofType:@"plist"];
        [BAFRouter setupConfig:routerConfig];
        //路由之前，需要事先判断是否登录
        //以后需要判断登录的url的action都需要在此添加
        s_NeedLoginUrl = [[NSSet alloc] initWithArray:@[@"babylist"]];
        //找不到target或者action时的回调
        [BAFRouter sharedInstance].tipDelegate = self;
    }
    return self;
}

+ (nonnull id)routeWithUrl:(NSURL *)url completion:(void(^ _Nullable)(_Nullable id result))completion
{
    return [[BBTCircleRouter sharedInstance] routeWithUrl:url completion:completion];
}

- (nonnull id)routeWithUrl:(NSURL *)url completion:(void(^ _Nullable)(_Nullable id result))completion
{
    return [BAFRouter routeWithUrl:url completion:completion];
}


/**
 外部调用URL参数错误时默认的提示VC
 */
- (nonnull UIViewController *)paramsErrorTipController
{
    return nil;
}

/**
 内部调用找不到控制器时的提示VC
 */
- (nonnull UIViewController *)notFoundTargetTipController
{
    return nil;
}

/**
 内部调用无法解析参数时的提示VC
 */
- (nonnull UIViewController *)notFoundActionTipController
{
    return nil;
}

@end

//
//  BAFModuleRouter.h
//  Pods
//
//  Created by jackiehoo on 11/07/2017.
//
//

#import <Foundation/Foundation.h>
#import "BAFRouterConfig.h"
#import "BAFRouterTipProtocol.h"
#import "BAFRouterExceptionProtocol.h"

NS_ASSUME_NONNULL_BEGIN

//路由功能核心类

@interface BAFRouter : NSObject

/**
 BAFModuleRouter的参数配置
 */
@property (nonatomic, strong, readonly) BAFRouterConfig *config;

/**
 异常处理代理
 */
@property (nonatomic, weak) id<BAFRouterExceptionProtocol> exceptionDelegate;


/**
调用失败提示处理代理
 */
@property (nonatomic, weak) id<BAFRouterTipProtocol> tipDelegate;


/**
 单例方法
 
 @return BAFRouter对象
 */
+ (instancetype)sharedInstance;


/**
 配置config,需要application:didFinishLaunchingWithOptions:中初始化
 
 @param config config对象
 */
+ (void)setupConfig:(BAFRouterConfig *)config;

/**
 远程App,当然内部也可以使用的调用入口
 
 @param url 规则：scheme://[host]/[module]/[action]?[params]
 URL例子: babytreedeeplink://com.babytree.pregnancy/home/homePage?name=lisi&age=18
 
 @param completion 如果远程调用有回调则在此执行，回调结果在info[result]内
 @return 如果远程调用有返回值，则在此直接返回，如果无法调用，则返回@(NO)
 */
+ (nonnull id)routeWithUrl:(NSURL *)url completion:(void(^ _Nullable)(_Nullable id result))completion;

/**
 本地组件调用入口
 
 @param targetName 调用的类名
 @param actionName 调用的方法名
 @param params 传递的参数
 @param shouldCacheTarget 是否缓存
 @return 如果本地调用有返回值，则在此直接返回，如果无法调用，则返回@(NO)
 */
+ (nullable id)routeWithTarget:(NSString *)targetName action:(NSString *)actionName params:(nullable NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;

/**
 远程App,当然内部也可以使用的调用入口
 
 @param url 规则：scheme://[host]/[module]/[action]?[params]
 URL例子: babytreedeeplink://com.babytree.pregnancy/home/homePage?name=lisi&age=18
 
 @param completion 如果远程调用有回调则在此执行，回调结果在info[result]内
 @return 如果远程调用有返回值，则在此直接返回，如果无法调用，则返回@(NO)
 */
- (id)routeWithUrl:(NSURL *)url completion:(void (^)(id _Nullable))completion;

/**
 本地组件调用入口
 
 @param targetName 调用的类名
 @param actionName 调用的方法名
 @param params 传递的参数
 @param shouldCacheTarget 是否缓存
 @return 如果本地调用有返回值，则在此直接返回，如果无法调用，则返回@(NO)
 */
- (nullable id)routeWithTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;

/**
 对于一些类可以做缓存，减少创建，如cell，方便重复利用，可以做手动清理
 @param targetName 调用的类名
 */
+ (void)releaseTargetCacheWithTargetName:(NSString *)targetName;

@end
NS_ASSUME_NONNULL_END

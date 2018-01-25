//
//  BAFRouterTargetMap.h
//  Pods
//
//  Created by jackiehoo on 11/07/2017.
//
//

#import <Foundation/Foundation.h>

/**
  BAFRouteMapObject 用于维护我们的模块映射表
 */

NS_ASSUME_NONNULL_BEGIN

typedef NSString *HostName NS_EXTENSIBLE_STRING_ENUM;

typedef NSString *TargetName NS_EXTENSIBLE_STRING_ENUM;

typedef NSString *ActionName NS_EXTENSIBLE_STRING_ENUM;

@interface BAFRouterAction : NSObject

@property (nonatomic, copy, readonly) ActionName actionName;

@end

@interface BAFRouterTarget : NSObject

@property (nonatomic, copy, readonly) TargetName targetName;

- (nullable BAFRouterAction *)objectForKeyedSubscript:(NSString *)key;

@end

@interface BAFRouterTargetActionMap : NSObject

- (nullable BAFRouterTarget *)objectForKeyedSubscript:(NSString *)key;


@end

@interface BAFRouterModuleServiceHostMap : NSObject

- (nullable BAFRouterTargetActionMap *)objectForKeyedSubscript:(NSString *)key;

/**
 创建url短链路由表的工厂方法
 
 @param mapFilePath Plist文件路径
 @param additionMapFilePath Plist文件路径
 @return BAFRouterModuleServiceHostMap模型对象
 */
+ (instancetype)mapWithPlistFile:(NSString *)mapFilePath additionalMapFilePath:(NSString *)additionMapFilePath;


@end

NS_ASSUME_NONNULL_END

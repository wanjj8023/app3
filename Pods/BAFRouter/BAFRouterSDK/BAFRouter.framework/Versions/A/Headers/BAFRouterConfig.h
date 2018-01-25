//
//  BAFRouterConfig.h
//  Pods
//
//  Created by jackiehoo on 11/07/2017.
//
//

#import <Foundation/Foundation.h>

//路由配置

@interface BAFRouterConfig : NSObject

/**
 用于验证的URLScheme
 */
@property (nonatomic, copy) NSString *URLScheme;
/**
 用于验证url的Host是否在数组范围内
 */
@property (nonatomic, strong) NSArray<NSString *> *URLHosts;

/**
 跳过URL验证，我们应该考虑不让URL有能力访问所有组件或服务
 */
@property (nonatomic, assign) BOOL isNeedVerifyURL;

/**
 APP的对外URL路由映射表的路径，是一个Plist文件，需要模块和方法维护映射表
 
 格式如下
 <key>targetB</key>
	<dict>
 <key>name</key>
 <string>B</string>      //模块名，需要添加
 <key>actions</key>
 <dict>
 <key>actionA</key>
 <string>BA</string>    //方法名，需要对应添加
 <key>actionB</key>
 <string>BB</string>
 <key>actionC</key>
 <string>BC</string>
 </dict>
	</dict>
 */
@property (nonatomic, copy) NSString *URLRouteMapFilePath;
//可以追加一个plist文件，可以为空。目前孕育和美囤是在一个APP里，所以美囤可以使用个字段加载plist文件
@property (nonatomic, copy) NSString *additionalURLRouteMapFilePath;


@end

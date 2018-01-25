//
//  BAFRouterTipProtocol.h
//  Pods
//
//  Created by jackiehoo on 11/07/2017.
//
//

#ifndef BAFRouterTipProtocol_h
#define BAFRouterTipProtocol_h

@protocol BAFRouterTipProtocol <NSObject>

/**
 外部调用URL参数错误时默认的提示VC
 */
- (nonnull UIViewController *)paramsErrorTipController;

/**
 内部调用找不到控制器时的提示VC
 */
- (nonnull UIViewController *)notFoundTargetTipController;

/**
 内部调用无法解析参数时的提示VC
 */
- (nonnull UIViewController *)notFoundActionTipController;


@end

#endif /* BAFRouterTipProtocol_h */

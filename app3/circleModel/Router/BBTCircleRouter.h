//
//  BBTCircleRouter.h
//  app3
//
//  Created by wanghonglu on 2018/1/23.
//  Copyright © 2018年 babytree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BBTCircleRouter : NSObject

+ (nonnull id)routeWithUrl:(NSURL *)url completion:(void(^ _Nullable)(_Nullable id result))completion;

@end

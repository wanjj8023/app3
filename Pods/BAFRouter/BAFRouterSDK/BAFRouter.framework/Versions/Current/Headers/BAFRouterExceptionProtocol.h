//
//  BAFRouterExceptionProtocol.h
//  Pods
//
//  Created by jackiehoo on 11/07/2017.
//
//

#ifndef BAFRouterExceptionProtocol_h
#define BAFRouterExceptionProtocol_h

@protocol BAFRouterExceptionProtocol <NSObject>

/**
 处理调度器无法解析URL时的代理方法
 
 @param url 远程调用的URL
 */
- (void)routerCannotParseWithURL:(NSURL *)url;

/**
 处理调度器无法匹配URLScheme的情况的代理方法
 
 @param url 远程调用的URL
 */
- (void)routerCannotMatchSchemeWithURL:(NSURL *)url;

- (void)routerCannotMatchHostWithURL:(NSURL *)url;

@end


#endif /* BAFRouterExceptionProtocol_h */

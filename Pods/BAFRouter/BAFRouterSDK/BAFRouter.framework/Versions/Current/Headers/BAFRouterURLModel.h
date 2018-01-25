//
//  BAFRouterURLModel.h
//  Pods
//
//  Created by jackiehoo on 11/07/2017.
//
//

#import <Foundation/Foundation.h>

@interface BAFRouterURLModel : NSObject

@property (nonatomic, copy, readonly) NSString *scheme;

@property (nonatomic, copy, readonly) NSString *host;

@property (nonatomic, copy, readonly) NSString *target;//module

@property (nonatomic, copy, readonly) NSString *action;//moduleAction

@property (nonatomic, strong, readonly) NSDictionary *params;

+ (instancetype)parseObjectWithURL:(NSURL *)url;

@end

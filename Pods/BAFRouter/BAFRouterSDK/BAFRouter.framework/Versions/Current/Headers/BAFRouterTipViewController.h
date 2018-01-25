//
//  BAFRouterTipViewController.h
//  Pods
//
//  Created by jackiehoo on 12/07/2017.
//
//

#import <UIKit/UIKit.h>

@interface BAFRouterTipViewController : UIViewController

@property (nonatomic, readonly) BOOL isparamsError;
@property (nonatomic, readonly) BOOL isNotURLSupport;
@property (nonatomic, readonly) BOOL isURLSchemeError;
@property (nonatomic, readonly) BOOL isTargetNameError;
@property (nonatomic, readonly) BOOL isActionNameError;


+(nonnull UIViewController *)paramsErrorTipController;

+(nonnull UIViewController *)notURLTipController;

+(nonnull UIViewController *)urlSchemeErrorTipConctroller;

+(nonnull UIViewController *)targetNameErrorTipConctroller;

+(nonnull UIViewController *)actionNameErrorTipConctroller;


-(void)showDebugTipController:(nonnull NSString *)URL;

@end

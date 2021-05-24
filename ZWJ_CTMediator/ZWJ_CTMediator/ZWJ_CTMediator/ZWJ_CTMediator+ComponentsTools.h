//
//  ZWJ_CTMediator+ComponentsTools.h
//  ZWJ_CTMediator
//
//  Created by shinho on 2021/5/20.
//

#import "ZWJ_CTMediator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZWJ_CTMediator (ComponentsTools)

- (UIViewController * _Nullable)topViewController;

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)animated completion:(void (^ _Nullable )(void))completion;

@end

NS_ASSUME_NONNULL_END

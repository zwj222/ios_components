//
//  ZWJ_CTMediator+Module_A.h
//  Module_A_Category
//
//  Created by shinho on 2021/5/20.
//

#import <UIKit/UIKit.h>
#import <ZWJ_CTMediator/ZWJ_CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZWJ_CTMediator (Module_A)

- (UIViewController *)A_Category_Swift_ViewControllerWithCallback:(void(^)(NSString *result))callback;
- (UIViewController *)A_Category_Objc_ViewControllerWithCallback:(void(^)(NSString *result))callback;

@end

NS_ASSUME_NONNULL_END

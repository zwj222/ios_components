//
//  Target_Module_A.m
//  Module_A
//
//  Created by shinho on 2021/5/20.
//

#import "Target_Module_A.h"

#import "AViewController.h"

@implementation Target_Module_A

- (UIViewController *)Action_Category_ViewController:(NSDictionary *)params
{
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"OC -> category -> OC -> success");
    }
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

- (UIViewController *)Action_Extension_ViewController:(NSDictionary *)params
{
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"OC -> extention -> OC -> success");
    }
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end


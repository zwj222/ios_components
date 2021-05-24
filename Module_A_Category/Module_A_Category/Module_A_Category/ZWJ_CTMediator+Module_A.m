//
//  ZWJ_CTMediator+Module_A.m
//  Module_A_Category
//
//  Created by shinho on 2021/5/20.
//

#import "ZWJ_CTMediator+Module_A.h"

@implementation ZWJ_CTMediator (Module_A)

- (UIViewController *)A_Category_Swift_ViewControllerWithCallback:(void (^)(NSString *))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    params[kCTMediatorParamsKeySwiftTargetModuleName] = @"Module_C_Swift";
    return [self performTarget:@"Module_C_Swift" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}

- (UIViewController *)A_Category_Objc_ViewControllerWithCallback:(void (^)(NSString *))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"Module_A" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}

@end


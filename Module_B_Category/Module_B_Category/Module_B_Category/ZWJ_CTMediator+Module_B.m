//
//  ZWJ_CTMediator+Module_B.m
//  Module_B_Category
//
//  Created by shinho on 2021/5/20.
//

#import "ZWJ_CTMediator+Module_B.h"

@implementation ZWJ_CTMediator (Module_B)

- (UIViewController *)B_viewControllerWithContentText:(NSString *)contentText
{
    /*
        BViewController *viewController = [[BViewController alloc] initWithContentText:@"hello, world!"];
     */
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"contentText"] = contentText;
    return [self performTarget:@"Module_B" action:@"viewController" params:params shouldCacheTarget:NO];
}


@end

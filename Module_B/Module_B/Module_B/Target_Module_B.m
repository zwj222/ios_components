//
//  Target_Module_B.m
//  Module_B
//
//  Created by shinho on 2021/5/20.
//

#import "Target_Module_B.h"

#import "BViewController.h"

@implementation Target_Module_B

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSString *contentText = params[@"contentText"];
    UIColor *textColor = params[@"textColor"];
    BViewController *viewController = [[BViewController alloc] initWithContentText:contentText withTextColor:textColor];
    return viewController;
}

@end


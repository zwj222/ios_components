//
//  ViewController.m
//  Test_MainProject
//
//  Created by shinho on 2021/5/20.
//

#import "ViewController.h"

#import <ZWJ_MasonyFrame/UIView+MasonyFrame.h>
#import <ZWJ_CTMediator/ZWJ_CTMediator.h>

#import <Module_A_Category/ZWJ_CTMediator+Module_A.h>
#import <Module_B_Category/ZWJ_CTMediator+Module_B.h>
#import <Module_C_Swift_Extention/Module_C_Swift_Extention-Swift.h>

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.tableView fill];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.textLabel.text = self.dataSource[indexPath.row];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        // Objective-C -> Category -> Objective-C
        UIViewController *viewController = [[ZWJ_CTMediator sharedInstance] A_Category_Objc_ViewControllerWithCallback:^(NSString *result) {
            NSLog(@"%@", result);
        }];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    if (indexPath.row == 1) {
        // Objective-C -> Category -> Swift
        UIViewController *viewController = [[ZWJ_CTMediator sharedInstance] A_Category_Swift_ViewControllerWithCallback:^(NSString *result) {
            NSLog(@"%@", result);
        }];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    if (indexPath.row == 2) {
        // Objective-C -> Extension -> Objective-C
        UIViewController *viewController = [[ZWJ_CTMediator sharedInstance] A_showObjcWithCallback:^(NSString * _Nonnull result) {
            NSLog(@"%@", result);
        }];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    if (indexPath.row == 3) {
        // Objective-C -> Extension -> Swift
        UIViewController *viewController = [[ZWJ_CTMediator sharedInstance] A_showSwiftWithCallback:^(NSString * _Nonnull result) {
            NSLog(@"%@", result);
        }];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    
    if (indexPath.row == 4) {
        // 直接跳转 去 B页面
        UIViewController *viewController = [[ZWJ_CTMediator sharedInstance] B_viewControllerWithContentText:@"就是这么骚"];
        [self.navigationController pushViewController:viewController animated:YES];
        
        NSLog(@"Go to B page.");
    }
}

#pragma mark - getters and setters
- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = @[
                        @"Objective-C -> Category -> Objective-C",
                        @"Objective-C -> Category -> Swift",
                        @"Objective-C -> Extension -> Objective-C",
                        @"Objective-C -> Extension -> Swift",
                        
                        @"GO to B page",
                        ];
    }
    return _dataSource;
}

@end

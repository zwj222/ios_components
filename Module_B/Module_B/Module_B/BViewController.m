//
//  BViewController.m
//  Module_B
//
//  Created by shinho on 2021/5/20.
//

#import "BViewController.h"
#import <ZWJ_MasonyFrame/UIView+MasonyFrame.h>

@interface BViewController ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation BViewController

#pragma mark - life cycle
- (instancetype)initWithContentText:(NSString *)contentText withTextColor:(UIColor *)textColor
{
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
        self.contentLabel.textColor = textColor;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.contentLabel];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.contentLabel sizeToFit];
    [self.contentLabel centerEqualToView:self.view];
}

#pragma mark - getters and setters
- (UILabel *)contentLabel
{
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
    }
    return _contentLabel;
}

@end

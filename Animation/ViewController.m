//
//  ViewController.m
//  Animation
//
//  Created by LeoTai on 17/6/9.
//  Copyright © 2017年 LeoTai. All rights reserved.
//

#import "ViewController.h"
#import "GoodButton.h"

@interface ViewController ()

@property(nonatomic, strong)GoodButton * goodBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.goodBtn.center = self.view.center;
    [self.view addSubview:self.goodBtn];
}

- (void)ClickEvent:(GoodButton *)btn {
    if (btn.selected) {
        [btn popInsideWithDuration:0.4f];
    } else {
        [btn popOutsideWithDuration:0.5f];
        [btn animation];
    }
    btn.selected = !btn.selected;
}

- (GoodButton *)goodBtn {
    if (!_goodBtn) {
        _goodBtn = [GoodButton buttonWithType:UIButtonTypeCustom];
        _goodBtn.frame = CGRectMake(0, 0, 60, 60);
        _goodBtn.goodImg = [UIImage imageNamed:@"scale"];
        _goodBtn.goodScale = 0.05f;
        _goodBtn.goodScaleRange = 0.02f;
        [_goodBtn addTarget:self action:@selector(ClickEvent:) forControlEvents:UIControlEventTouchUpInside];
        [_goodBtn setImage:[UIImage imageNamed:@"like2_normal_icon"] forState:UIControlStateNormal];
        [_goodBtn setImage:[UIImage imageNamed:@"like2_seclected_icon"] forState:UIControlStateSelected];
    }
    return _goodBtn;
}

@end

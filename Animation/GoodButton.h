//
//  GoodButton.h
//  Animation
//
//  Created by LeoTai on 17/6/9.
//  Copyright © 2017年 LeoTai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoodButton : UIButton

@property(nonatomic, strong)UIImage * goodImg;
@property(nonatomic, assign)CGFloat goodScale;
@property(nonatomic, assign)CGFloat goodScaleRange;

- (void)animation;
- (void)popOutsideWithDuration:(NSTimeInterval)duration;
- (void)popInsideWithDuration:(NSTimeInterval)duration;

@end

//
//  BangView.h
//  Animation
//
//  Created by LeoTai on 17/6/9.
//  Copyright © 2017年 LeoTai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BangView : UIView

@property(nonatomic, strong)UIImage * particleImg;
@property(nonatomic, assign)CGFloat particleScale;
@property(nonatomic, assign)CGFloat particleScaleRange;

- (void)animate;

@end

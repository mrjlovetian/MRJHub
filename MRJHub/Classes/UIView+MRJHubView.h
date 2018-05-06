//
//  UIView+MRJHubView.h
//  Pods
//
//  Created by Mr on 2017/9/18.

#import <UIKit/UIKit.h>

@interface UIView (MRJHubView)

/// 显示普通的文本信息
- (void)MRJShowMessage:(NSString *)msg;

/// 延时显示
- (void)MRJShowMessage:(NSString *)msg withDur:(NSTimeInterval)dur;

/// 是否可编辑状态
- (void)MRJShowMessage:(NSString *)msg widthDur:(NSTimeInterval)dur edit:(BOOL)edit;

/// 默认加载
- (void)MRJShowDefaultAnimationLoading;

/// 动画加载
- (void)MRJShowtAnimationLoading;

/// 自定义加载
- (void)MRJShowLoadingCustomView:(UIView *)customView toView:(UIView *)toView;

/// 隐藏加载框
- (void)MRJHideView;

@end

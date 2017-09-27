//
//  UIView+MRJHubView.h
//  Pods
//
//  Created by Mr on 2017/9/18.
//
//

#import <UIKit/UIKit.h>

@interface UIView (MRJHubView)

/// 显示普通的文本信息
- (void)MRJ_showMessage:(NSString *)msg;

/// 延时显示
- (void)MRJ_showMessage:(NSString *)msg withDur:(NSTimeInterval)dur;

/// 是否可编辑状态
- (void)MRJ_showMessage:(NSString *)msg widthDur:(NSTimeInterval)dur edit:(BOOL)edit;

/// 默认加载
- (void)MRJ_showDefaultAnimationLoading;

/// 动画加载
- (void)MRJ_showtAnimationLoading;

/// 自定义加载
- (void)MRJ_showLoadingCustomView:(UIView *)customView toView:(UIView *)toView;

/// 隐藏加载框
- (void)MRJ_hideView;

@end

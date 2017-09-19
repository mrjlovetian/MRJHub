//
//  UIView+MRJHubView.h
//  Pods
//
//  Created by Mr on 2017/9/18.
//
//

#import <UIKit/UIKit.h>

@interface UIView (MRJHubView)
- (void)MRJ_showMessage:(NSString *)msg;

- (void)MRJ_showMessage:(NSString *)msg withDur:(NSTimeInterval)dur;

- (void)MRJ_showMessage:(NSString *)msg widthDur:(NSTimeInterval)dur edit:(BOOL)edit;

- (void)MRJ_showDefaultAnimationLoading;

- (void)MRJ_showtAnimationLoading;

- (void)MRJ_showLoadingCustomView:(UIView *)customView toView:(UIView *)toView;

- (void)MRJ_hideView;

@end

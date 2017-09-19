//
//  UIView+MRJHubView.m
//  Pods
//
//  Created by Mr on 2017/9/18.
//
//

#import "UIView+MRJHubView.h"
#import "MRJLoadingView.h"
#import "MBProgressHUD.h"

@implementation UIView (MRJHubView)
- (void)MRJ_showMessage:(NSString *)msg{
    [self MRJ_showMessage:msg widthDur:3 edit:YES];
}

- (void)MRJ_showMessage:(NSString *)msg withDur:(NSTimeInterval)dur{
    [self MRJ_showMessage:msg widthDur:dur edit:YES];
}

- (void)MRJ_showMessage:(NSString *)msg widthDur:(NSTimeInterval)dur edit:(BOOL)edit{
    if ([msg isEqualToString:@""]) {
        return;
    }
    
    MBProgressHUD *hub = [MBProgressHUD showHUDAddedTo:self animated:true];
    hub.mode = MBProgressHUDModeText;
    hub.detailsLabel.text = msg;
    hub.detailsLabel.font = [UIFont systemFontOfSize:17];
    hub.detailsLabel.textColor = [UIColor whiteColor];
    hub.backgroundColor = [UIColor clearColor];
    hub.userInteractionEnabled = !edit;
    hub.margin = 12.0;
    [hub hideAnimated:YES afterDelay:dur];
}

- (void)MRJ_showDefaultAnimationLoading{
    [self MRJ_showtAnimationLoading];
}

- (void)MRJ_showtAnimationLoading{
    MRJLoadingView *loadingView = [[MRJLoadingView alloc] initWithFrame:CGRectMake(0, 0, 90, 90)];
    [self MRJ_showLoadingCustomView:loadingView toView:self];
}

- (void)MRJ_showLoadingCustomView:(UIView *)customView toView:(UIView *)toView{
    MBProgressHUD *hub = [MBProgressHUD showHUDAddedTo:toView animated:YES];
    hub.minSize = [UIScreen mainScreen].bounds.size;
    if (customView) {
        hub.mode = MBProgressHUDModeCustomView;
        hub.customView = customView;
        hub.customView.center = hub.center;
    }
    hub.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    hub.backgroundColor = [UIColor clearColor];
}

- (void)MRJ_hideView{
    [MBProgressHUD hideHUDForView:self animated:YES];
}

@end

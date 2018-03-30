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

- (void)MRJShowMessage:(NSString *)msg {
    [self MRJShowMessage:msg widthDur:3 edit:YES];
}

- (void)MRJShowMessage:(NSString *)msg withDur:(NSTimeInterval)dur {
    [self MRJShowMessage:msg widthDur:dur edit:YES];
}

- (void)MRJShowMessage:(NSString *)msg widthDur:(NSTimeInterval)dur edit:(BOOL)edit{
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

- (void)MRJShowDefaultAnimationLoading {
    [self MRJShowtAnimationLoading];
}

- (void)MRJShowtAnimationLoading{
    MRJLoadingView *loadingView = [[MRJLoadingView alloc] initWithFrame:CGRectMake(0, 0, 90, 90)];
    [self MRJShowLoadingCustomView:loadingView toView:self];
}

- (void)MRJShowLoadingCustomView:(UIView *)customView toView:(UIView *)toView{
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

- (void)MRJHideView {
    [MBProgressHUD hideHUDForView:self animated:YES];
}

@end

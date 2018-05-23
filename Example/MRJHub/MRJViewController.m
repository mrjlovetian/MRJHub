//
//  MRJViewController.m
//  MRJHub
//
//  Created by mrjlovetian@gmail.com on 09/18/2017.
//  Copyright (c) 2017 mrjlovetian@gmail.com. All rights reserved.
//

#import "MRJViewController.h"
#import "UIView+MRJHubView.h"
#import "MRJLoadingView.h"

@interface MRJViewController ()

@end

@implementation MRJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [self.view MRJ_showMessage:@"我是小江江"];
    
    [self.view MRJShowDefaultAnimationLoading];
//    [self.view MRJShowLoadingCustomView:[[MRJLoadingView alloc] initWithFrame:CGRectMake(0, 0, 90, 90) srcArr:nil] toView:self.view];
//    [self.view MRJ_showMessage:@"kkk"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

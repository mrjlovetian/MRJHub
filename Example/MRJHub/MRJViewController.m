//
//  MRJViewController.m
//  MRJHub
//
//  Created by mrjlovetian@gmail.com on 09/18/2017.
//  Copyright (c) 2017 mrjlovetian@gmail.com. All rights reserved.
//

#import "MRJViewController.h"
#import "UIView+MRJHubView.h"

@interface MRJViewController ()

@end

@implementation MRJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [self.view MRJ_showMessage:@"我是小江江"];
    
    [self.view MRJ_showDefaultAnimationLoading];
//    [self.view MRJ_showMessage:@"kkk"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
